require 'dotenv'
require 'fileutils'

module Jekyll
  # NEWS_PATH(ai-news-pipeline 클론의 archive/news)를 _news로 복사한다.
  # 로컬 전용 — production(GitHub Actions)에서는 워크플로가 _news를 채운다
  class NewsSyncGenerator < Jekyll::Generator
    safe true
    priority :lowest

    def generate(site)
      Dotenv.load
      return if ENV['JEKYLL_ENV'] == 'production'

      source = ENV['NEWS_PATH'].to_s.strip
      return if source.empty?

      unless Dir.exist?(source)
        Jekyll.logger.warn 'NewsSync', "NEWS_PATH 경로를 찾을 수 없음: #{source}"
        return
      end

      source_paths = Dir.glob('**/*.md', base: source)

      # 경로는 살아 있는데 파일이 안 보이는 상태(클론 전·이동됨·공유 끊김,
      # NEWS_PATH가 한 단계 어긋남)에서 정리 루프를 돌리면 _news가 통째로 지워진다.
      # _news는 .gitignore라 복구 수단이 없으므로 아무것도 하지 않고 빠진다
      if source_paths.empty?
        Jekyll.logger.warn 'NewsSync', "뉴스 파일이 없어 동기화를 건너뜀: #{source}"
        return
      end

      dest = File.join(site.source, '_news')
      copied = copy_changed(source, dest, source_paths)
      deleted = delete_orphans(source, dest)

      if copied > 0 || deleted > 0
        puts ">> _news synced | 복사 #{copied} 삭제 #{deleted}"
      end
    end

    private

    # 변경된 파일만 복사한다 — 재빌드마다 전체 복사를 피하기 위함
    def copy_changed(source, dest, source_paths)
      copied = 0

      source_paths.each do |relative_path|
        source_file = File.join(source, relative_path)
        dest_file = File.join(dest, relative_path)
        next if synced?(source_file, dest_file)

        FileUtils.mkdir_p(File.dirname(dest_file))
        # mtime까지 복사해야 원본과 정확히 비교된다.
        # 복사 시각을 쓰면 원본이 과거 시각으로 갱신될 때 변경을 놓친다
        FileUtils.cp(source_file, dest_file, preserve: true)
        copied += 1
      rescue => e
        # 한 파일이 실패해도 나머지는 계속 복사한다
        Jekyll.logger.warn 'NewsSync', "복사 실패 #{relative_path}: #{e.message}"
      end

      copied
    end

    def delete_orphans(source, dest)
      return 0 unless Dir.exist?(dest)

      deleted = 0

      Dir.glob('**/*.md', base: dest).each do |relative_path|
        next if File.exist?(File.join(source, relative_path))

        File.delete(File.join(dest, relative_path))
        deleted += 1
      rescue => e
        Jekyll.logger.warn 'NewsSync', "삭제 실패 #{relative_path}: #{e.message}"
      end

      deleted
    end

    def synced?(source_file, dest_file)
      File.exist?(dest_file) &&
        File.size(dest_file) == File.size(source_file) &&
        File.mtime(dest_file) == File.mtime(source_file)
    end
  end
end
