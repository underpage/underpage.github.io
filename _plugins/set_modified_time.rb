require 'dotenv'
require 'time'
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
            created_time = file_created_time(full_path).strftime("%Y-%m-%d %H:%M")
            modified_time = File.mtime(full_path).strftime("%Y-%m-%d %H:%M")
            update_markdown_front_matter(full_path, created_time, modified_time)
          end
        end
      end
    end

    def file_created_time(file_path)
      File.birthtime(file_path)
    rescue NotImplementedError
      File.ctime(file_path)
    end

    def formatted_front_matter_time(value)
      return '' if value.nil?
      return value.strftime("%Y-%m-%d %H:%M") if value.respond_to?(:strftime)

      value.to_s.strip
    end

    def front_matter_time(value)
      Time.parse(formatted_front_matter_time(value))
    rescue ArgumentError
      nil
    end

    def synced_front_matter_time?(front_matter_text, key, value)
      front_matter_text.match?(/^#{Regexp.escape(key)}:\s*#{Regexp.escape(value)}\s*$/)
    end

    def update_markdown_front_matter(file_path, created_time, modified_time)
      content = File.read(file_path)

      if (match = content.match(/^(---\s*\n.*?\n?)^(---\s*$\n?)/m))
        front_matter_text = match[1]

        if synced_front_matter_time?(front_matter_text, 'created_time', created_time) &&
           synced_front_matter_time?(front_matter_text, 'modified_time', modified_time)
          return
        end

        yaml_content = YAML.safe_load(front_matter_text) || {}

        current_created_time = formatted_front_matter_time(yaml_content['created_time'])
        current_modified_time = formatted_front_matter_time(yaml_content['modified_time'])
        current_modified_at = front_matter_time(yaml_content['modified_time'])
        modified_at = Time.parse(modified_time)
        should_set_created_time = current_created_time.empty?
        should_set_modified_time = current_modified_time.empty? ||
                                   current_modified_at.nil? ||
                                   (modified_at - current_modified_at).abs >= 180

        return unless should_set_created_time || should_set_modified_time

        original_atime = File.atime(file_path)
        original_mtime = File.mtime(file_path)

        yaml_content['created_time'] = created_time if should_set_created_time
        yaml_content['modified_time'] = modified_time
        new_content = "#{YAML.dump(yaml_content)}---\n#{match.post_match}"
        File.write(file_path, new_content)
        File.utime(original_atime, original_mtime, file_path)
      else
        Jekyll.logger.warn "ModifiedTimeGenerator", "Failed to parse front matter for file: #{file_path}"
      end
    rescue => e
      Jekyll.logger.warn "ModifiedTimeGenerator", "Failed to update front matter: #{e.message}"
    end
  end
end
