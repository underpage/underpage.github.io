require 'yaml'

order_file = '_order.txt'
order_data = {}

File.readlines(order_file).each do |line|
  line.strip!
  next if line.empty?

  if line =~ /^(.+):(\d+)$/
    key = $1.strip
    value = $2.strip.to_i
    order_data[key] = value
  else
    puts "Warning: Ignoring invalid line: #{line}"
  end
  
end

def update_frontmatter(file_path, new_order)
  content = File.read(file_path)
  
  if content =~ /\A(---\s*\n.*?\n?)^(---\s*$\n?)/m
    frontmatter = YAML.load($1)
    body = $'
    
    if frontmatter['order'] != new_order
      frontmatter['order'] = new_order
      File.open(file_path, 'w') do |file|
        file.puts YAML.dump(frontmatter)
        file.puts "---"
        file.puts body
      end
      
      puts "Updated #{file_path} with new order: #{new_order}"
    end
  else
    puts "Error: No valid frontmatter found in #{file_path}"
  end
end

order_data.each do |key, value|
  file_path = File.join('_doc', key, 'index.md')
  if File.exist?(file_path)
    update_frontmatter(file_path, value)
  else
    puts "Warning: File not found: #{file_path}"
  end
end