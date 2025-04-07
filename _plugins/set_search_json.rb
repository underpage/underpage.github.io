require 'dotenv'
require 'listen'

module Jekyll
  class SearchJsonGenerator < Jekyll::Generator
    safe true
    priority :lowest

    @@has_run = false
    
    def generate(site)
      return if @@has_run
      
      Dotenv.load
      return if ENV['JEKYLL_ENV'] == 'production'

      items = site.data['doc_items']
      output_path = File.join('assets', 'data', 'doc_items.json')

      if ENV['JEKYLL_ENV'] != 'production'
        #start_listener(site, output_path)
        generate_file(items, output_path)
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

  end
end