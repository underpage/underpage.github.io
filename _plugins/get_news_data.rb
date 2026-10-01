module Jekyll
  # _news의 마크다운을 읽어 뉴스 목록 데이터와 기사 페이지를 만든다.
  # 파이프라인 원본에는 front matter가 없으므로 여기서 주입한다.
  class NewsDataGenerator < Jekyll::Generator
    safe true
    priority :normal

    # 파이프라인이 만드는 일별 리포트만 받는다.
    # index.md·README.md·하위 폴더 등이 섞여 들어오면 permalink가 충돌하거나
    # 'README.md' 같은 연도 탭이 생기므로 형식을 명시적으로 검증한다
    DAILY_REPORT = %r{\A\d{4}/\d{2}/\d{4}-\d{2}-\d{2}\.md\z}

    def generate(site)
      base_path = File.join(site.source, '_news')
      return unless Dir.exist?(base_path)

      days = collect_days(base_path)
      return if days.empty?

      days.each { |day| site.pages << build_page(site, day) }

      months = group_by_month(days)

      site.data['total_news_files'] = days.size
      site.data['news_items'] = months
      site.data['news_years'] = group_by_year(months)
    end

    private

    def collect_days(base_path)
      relative_paths = Dir.glob('**/*.md', base: base_path).select do |relative_path|
        relative_path.match?(DAILY_REPORT)
      end

      days = relative_paths.filter_map { |relative_path| build_day(base_path, relative_path) }
      days.sort_by { |day| day['date'] }.reverse
    end

    # 파일 하나가 깨져도 나머지 뉴스와 사이트 전체 빌드는 살린다
    def build_day(base_path, relative_path)
      year, month = relative_path.split('/')
      date = File.basename(relative_path, '.md')
      day = date.split('-').last
      content = read_content(File.join(base_path, relative_path))

      {
        'date' => date,
        'year' => year,
        'month' => month,
        'day' => day,
        'url' => "/news/#{year}/#{month}/#{day}/",
        'headline' => first_headline(content),
        'count' => content.scan(/^##\s+\d+\./).size,
        'dir' => File.dirname(relative_path),
        'content' => content,
      }
    rescue => e
      Jekyll.logger.warn 'NewsData', "건너뜀 #{relative_path}: #{e.message}"
      nil
    end

    # 외부 파이프라인이 스크래핑한 산출물이라 BOM·깨진 바이트가 섞일 수 있다.
    # scrub 없이 정규식을 돌리면 ArgumentError로 빌드 전체가 죽는다
    def read_content(file_path)
      File.read(file_path, encoding: 'bom|utf-8').scrub('')
    end

    # 그날의 첫 기사 제목 — 목록에서 미리보기로 쓴다
    def first_headline(content)
      match = content.match(/^##\s+\d+\.\s*(.+)$/)
      match ? match[1].strip : ''
    end

    def group_by_month(days)
      grouped = days.group_by { |day| [day['year'], day['month']] }

      months = grouped.map do |(year, month), items|
        {
          'year' => year,
          'month' => month,
          'label' => "#{year}-#{month}",
          'count' => items.size,
          # 날짜는 1일부터 오름차순으로 보여준다
          'days' => items.sort_by { |day| day['date'] }
                         .map { |day| day.reject { |key, _| %w[content dir].include?(key) } },
        }
      end

      months.sort_by { |month| month['label'] }.reverse
    end

    # /news 인덱스의 연도 → 월 탭 구성용
    def group_by_year(months)
      grouped = months.group_by { |month| month['year'] }

      years = grouped.map do |year, items|
        {
          'year' => year,
          'count' => items.sum { |month| month['count'] },
          # 탭·nav는 1월부터 오름차순으로 보여준다
          'months' => items.sort_by { |month| month['month'] },
        }
      end

      years.sort_by { |year| year['year'] }.reverse
    end

    def build_page(site, day)
      page = Jekyll::PageWithoutAFile.new(
        site, site.source, File.join('news', day['dir']), "#{day['date']}.md"
      )
      page.content = day['content']
      page.data.merge!(
        'layout' => 'layout-news',
        'title' => day['date'],
        'date' => day['date'],
        'permalink' => day['url'],
        'news_month' => "#{day['year']}-#{day['month']}",
        # head.html이 title·og:title·meta description에 쓴다
        'category' => 'news',
        'summary' => day['headline'],
      )
      page
    end
  end
end
