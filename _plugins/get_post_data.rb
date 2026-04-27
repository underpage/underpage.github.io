require 'dotenv'
require_relative '@utils'

module Jekyll
  class PostDataGenerator < Jekyll::Generator
    safe true
    priority :normal

    def generate(site)
      base_path = File.join(site.source, '_doc')
      total_files, items, tags, keywords = generate_items(site, base_path, '')
      site.data['total_doc_files'] = total_files
      site.data['doc_items'] = items
      site.data['doc_tags'] = tags
      site.data['doc_keywords'] = keywords
    end

    private

    def generate_items(site, path, parent_path, tags={}, keywords={})
      file_count = 0
      items = []
      folder_order = nil

      Dir.foreach(path) do |entry|
        next if entry == '.' || entry == '..'
        next if File.directory?(File.join(path, entry)) && entry == '_정리'

        full_path = File.join(path, entry)
        relative_path = File.join(parent_path, entry)

        # 폴더
        if File.directory?(full_path)
          sub_file_count, sub_items, sub_tags = generate_items(site, full_path, relative_path, tags, keywords)
          file_count += sub_file_count

          index_file = sub_items.find { |item| item['filename'] == 'index' }
          folder_order = index_file['order'] if index_file

          items << {
            'folder' => File.basename(entry),
            'url' => "/doc/#{relative_path}/index.md".gsub(/\/+/, '/'),
            'order' => folder_order,
            'posts' => sort_items(sub_items)
          }

        # 파일
        else
          front_matter = Jekyll::MyUtils.extract_front_matter(full_path)
          graph = extract_ttl_comment(full_path)
          parent_folder = File.basename(File.dirname(full_path))
          url = "/doc/#{relative_path}".gsub(/\/+/, '/')
          file_count += 1

          item = {
            #'folder' => parent_folder,
            'filename' => File.basename(entry, '.md'),
            'url' => url,
            'order' => front_matter['order'],
            'category' => front_matter['category'],
            'title' => front_matter['title'],
            'tags' => front_matter['tags'],
            'keywords' => front_matter['keywords'],
            'modified_time' => front_matter['modified_time'],
            'related' => graph['related'],
            'ttl_tags' => graph['ttl_tags'],
          }

          items << item

          if front_matter['tags']
            tag_item = {
              'url' => url,
              'order' => front_matter['order'],
              'category' => front_matter['title'],
              'title' => front_matter['summary'],
              'modified_time' => front_matter['modified_time'],
            }
            front_matter['tags'].each do |tag|
              tags[tag] ||= []
              tags[tag] << tag_item
            end
          end

          if front_matter['keywords']
            keyword_item = {
              'category' => front_matter['category'],
            }
            front_matter['keywords'].each do |keyword|
              keywords[keyword] ||= []
              keywords[keyword] << keyword_item
            end
          end

        end
      end

      [file_count, sort_items(items), sort_tags(tags), keywords]
    end

    def sort_items(items)
      items.sort_by do |item|
        [
          item['folder'] ? 0 : 1,
          item['filename'] == 'index' ? 0 : 1,
          item['order'] || Float::INFINITY,
          item['filename'] || '',
        ]
      end
    end

    def extract_ttl_comment(filepath)
      content = File.read(filepath, encoding: 'utf-8')
      match = content.match(/\{::comment\}\n(.*?)\{:\/comment\}/m)
      return {} unless match
      YAML.safe_load(match[1]) || {}
    rescue
      {}
    end

    def sort_tags(tags)
      sorted_tags = {}
      tags.sort_by { |tag, _| tag.downcase }.each do |tag, items|
        sorted_tags[tag] = {
          'title' => tag,
          'docs' => items.sort_by do |item|
            item['modified_time'] ? Time.parse(item['modified_time']) : Time.at(0)
          end.reverse
        }
      end
      sorted_tags
    end

  end
end