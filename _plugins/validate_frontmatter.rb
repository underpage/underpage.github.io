require 'yaml'
require 'pathname'

module Jekyll
  class ValidateFrontmatter < Jekyll::Generator
    safe true
    priority :high

    @@has_run = false

    VALID_TYPES = %w[
      contains extends requires implements instantiates
      references influences contrasts aspect_of applies_to
    ].freeze

    def generate(site)
      return if @@has_run
      @@has_run = true

      doc_path = File.join(site.source, '_doc')
      files = Dir.glob(File.join(doc_path, '**', '*.md')).sort

      return Jekyll.logger.warn('ValidateFrontmatter:', "파일 없음: #{doc_path}") if files.empty?

      id_map = Hash.new { |h, k| h[k] = [] }
      files.each do |f|
        id_map[File.basename(f, '.md')] << Pathname.new(f).relative_path_from(doc_path).to_s
      end

      duplicates = id_map.select { |_, paths| paths.size > 1 }
      has_related, no_related, errors = [], [], []

      files.each do |f|
        fm = Jekyll::MyUtils.extract_front_matter(f)
        rel_path = Pathname.new(f).relative_path_from(doc_path).to_s

        unless fm&.key?('related')
          no_related << rel_path
          next
        end

        has_related << rel_path
        related = fm['related']

        unless related.is_a?(Array)
          errors << [rel_path, "related 형식 오류 (list여야 함)"]
          next
        end

        related.each do |item|
          unless item.is_a?(Hash)
            errors << [rel_path, "related 항목 형식 오류: #{item}"]
            next
          end

          rid, rtype = item['id'], item['type']
          errors << [rel_path, "id 없는 related 항목"] unless rid
          errors << [rel_path, "type 없는 related 항목: id='#{rid}'"] unless rtype
          errors << [rel_path, "존재하지 않는 id: '#{rid}'"] if rid && !id_map.key?(rid)
          errors << [rel_path, "알 수 없는 type: '#{rtype}'"] if rtype && !VALID_TYPES.include?(rtype)
        end
      end

      total = files.size
      Jekyll.logger.info('ValidateFrontmatter:', "전체 #{total}개 | related 있음 #{has_related.size} (#{"%.1f" % (has_related.size.to_f / total * 100)}%)")

      duplicates.each do |did, paths|
        Jekyll.logger.warn('ValidateFrontmatter:', "중복 id '#{did}': #{paths.join(', ')}")
      end

      if errors.empty?
        Jekyll.logger.info('ValidateFrontmatter:', '오류 없음 ✓')
      else
        errors.each do |filepath, msg|
          Jekyll.logger.error('ValidateFrontmatter:', "#{filepath} → #{msg}")
        end
        raise Jekyll::Errors::FatalException, "ValidateFrontmatter: #{errors.size}건의 오류가 있습니다."
      end
    end

  end
end
