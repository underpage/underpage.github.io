require 'csv'
require 'open3'

csv_file_path = '_url.csv'
local_doc_folder = '_doc/'

csv_files = []
CSV.foreach(csv_file_path) do |row|
 next if row.empty?
 url, _date = row[0].split(',')
 relative_path = url.sub(%r{^https://[^/]+/}, '').sub(/^doc/, '_doc').strip
 csv_files << relative_path
end

committed_files = []
git_command = "git ls-tree -r HEAD --name-only"
Open3.popen3(git_command) do |stdin, stdout, stderr, wait_thr|
 committed_files = stdout.read.lines.map(&:chomp)
   .select { |f| f.start_with?(local_doc_folder) }
   .map { |f| f.strip }
end

csv_files = csv_files.map { |f| f.gsub('\\', '/') }
committed_files = committed_files.map { |f| f.gsub('\\', '/') }

missing_in_csv = committed_files - csv_files

missing_in_csv.each do |file|
 url_path = file.sub(/^_doc/, 'doc')
 puts "https://underpage.github.io/#{url_path}"
end