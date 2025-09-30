require 'dotenv'
require_relative '@utils'

module Jekyll
  class PostDataGenerator < Jekyll::Generator
    safe true
    priority :normal

    def generate(site)
      base_path = File.join(site.source, '_doc')
      total_files, items, tags = generate_items(site, base_path, '')
      site.data['total_doc_files'] = total_files
      site.data['doc_items'] = items
      site.data['doc_tags'] = tags
    end

    private

    def generate_items(site, path, parent_path, tags = {})
      file_count = 0
      items = []
      folder_order = nil

      Dir.foreach(path) do |entry|
        next if entry == '.' || entry == '..'
        
        full_path = File.join(path, entry)
        relative_path = File.join(parent_path, entry)

        # 폴더
        if File.directory?(full_path)
          sub_file_count, sub_items, sub_tags = generate_items(site, full_path, relative_path, tags)
          file_count += sub_file_count

          index_file = sub_items.find { |item| item['filename'] == 'index' }
          folder_order = index_file['order'] if index_file

          items << {
            'folder' => File.basename(entry),
            'url' => "/doc/#{relative_path}/index.md".gsub(/\/+/, '/'),
            'order' => folder_order,
            #'post_cnt' => sub_file_count,
            'posts' => sort_items(sub_items)
          }

        # 파일
        else
          front_matter = Jekyll::MyUtils.extract_front_matter(full_path)
          parent_folder = File.basename(File.dirname(full_path))
          url = "/doc/#{relative_path}".gsub(/\/+/, '/')
          file_count += 1

          item = {
            #'folder' => parent_folder,
            'filename' => File.basename(entry, '.md'),
            'url' => url,
            'title' => front_matter['title'],
            'order' => front_matter['order'],
            'description' => front_matter['description'],
            'tags' => front_matter['keywords'],
            'modified_time' => front_matter['modified_time'],
          }

          items << item

          if front_matter['tags']
            tag_item = {
              'url' => url,
              'title' => front_matter['title'],
              'description' => front_matter['description'],
              'modified_time' => front_matter['modified_time'],
            }
            front_matter['tags'].each do |tag|
              tags[tag] ||= []
              tags[tag] << tag_item
            end
          end

        end
      end

      [file_count, sort_items(items), sort_tags(tags)]
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

    def sort_tags(tags)
      sorted_tags = {}
      tags.sort_by { |tag, _| tag.downcase }.each do |tag, items|
        sorted_tags[tag] = {
          'title' => tag,
          'docs' => items.sort_by { |item| item['title'].downcase }
        }
      end
      sorted_tags
    end

  end
end