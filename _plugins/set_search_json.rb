require 'dotenv'

module Jekyll
  class SearchJsonGenerator < Jekyll::Generator
    safe true
    priority :lowest

    @@has_run = false

    def generate(site)
      return if @@has_run

      Dotenv.load
      return if ENV['JEKYLL_ENV'] == 'production'

      require 'listen'

      items = site.data['doc_items']
      output_path = File.join('assets', 'data', 'doc_items.json')

      if ENV['JEKYLL_ENV'] != 'production'
        #start_listener(site, output_path)
        generate_file(items, output_path)
        generate_sitemap(items, '_sitemap.txt')
        @@has_run = true
      end
    end

    private

    def start_listener(site, output_path)
      listener = Listen.to('_doc', only: /\.(md|markdown)$/, latency: 120) do |modified, added, removed|
        items = site.data['doc_items']
        generate_file(items, output_path)
      end

      listener.start
    end

    def generate_file(items, output_path)
      FileUtils.mkdir_p(File.dirname(output_path))
      File.write(output_path, JSON.generate(items))
      puts ">> doc_items.json generated"
    end

    def generate_sitemap(items, output_path)
      lines = []
      build_lines(items, lines, 0)
      File.write(output_path, lines.join("\n") + "\n")
      puts ">> sitemap.txt generated"
    end

    def build_lines(items, lines, depth)
      return unless items
      indent = '  ' * depth
      items.each do |item|
        if item['folder']
          idx = (item['posts'] || []).find { |p| p['filename'] == 'index' }
          title = idx&.dig('title')
          lines << "#{indent}#{item['folder']}/#{title ? "  #{title}" : ''}"
          build_lines(item['posts'], lines, depth + 1)
        else
          next if %w[index @ @@].include?(item['filename'])
          title = item['title']
          lines << "#{indent}#{item['filename']}.md#{title ? "  #{title}" : ''}"
        end
      end
    end

  end
end