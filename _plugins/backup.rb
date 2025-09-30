require 'dotenv'
require 'fileutils'

module Jekyll
  class Backup < Jekyll::Generator
    safe true
    priority :lowest

    @@has_run = false

    def generate(site)
      return if @@has_run
      
      Dotenv.load
      return if ENV['JEKYLL_ENV'] == 'production'

      if ENV['JEKYLL_ENV'] != 'production'
        if Dir.exist?("_site")
          backup_dir = "_site_backup#{Time.now.strftime('%Y%m%d%H%M')}"
          
          original_stdout = $stdout.clone
          $stdout.reopen(File::NULL)
          
          begin
            FileUtils.cp_r("_site", backup_dir)
          ensure
            $stdout.reopen(original_stdout)
          end
          
        end
        
        @@has_run = true

      end
    end
    
  end
end