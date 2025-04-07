require 'dotenv'
require_relative '@utils'

module Jekyll
  class ModifiedTimeGenerator < Jekyll::Generator
    safe true
    priority :low

    def generate(site)
      Dotenv.load
      return if ENV['JEKYLL_ENV'] == 'production'

      base_path = File.join(site.source, '_doc')
      update_modified_times(site, base_path)
    end

    private

    def update_modified_times(site, path)
      Dir.foreach(path) do |entry|
        next if entry == '.' || entry == '..'

        full_path = File.join(path, entry)

        if File.directory?(full_path)
          update_modified_times(site, full_path)
        else
          if File.extname(full_path) == '.md'
            front_matter = Jekyll::MyUtils.extract_front_matter(full_path)
            created_time = File.ctime(full_path).strftime("%Y-%m-%d %H:%M")
            modified_time = File.mtime(full_path).strftime("%Y-%m-%d %H:%M")
            front_matter['created_time'] = created_time
            front_matter['modified_time'] = modified_time
            update_markdown_front_matter(full_path, front_matter, created_time, modified_time)
          end
        end
      end
    end

    def update_markdown_front_matter(file_path, front_matter, created_time, modified_time)
      content = File.read(file_path)

      if content =~ /^(---\s*\n.*?\n?)^(---\s*$\n?)/m
        yaml_content = YAML.safe_load($1) || {}

        return if yaml_content['modified_time'] == modified_time

        yaml_content['created_time'] = front_matter['created_time']
        yaml_content['modified_time'] = front_matter['modified_time']
        new_content = "#{YAML.dump(yaml_content)}---\n#{content.split(/^---\s*$/)[2]}"
        File.write(file_path, new_content)
      else
        Jekyll.logger.warn "ModifiedTimeGenerator", "Failed to parse front matter for file: #{file_path}"
      end
    rescue => e
      Jekyll.logger.warn "ModifiedTimeGenerator", "Failed to update front matter: #{e.message}"
    end
  end
end