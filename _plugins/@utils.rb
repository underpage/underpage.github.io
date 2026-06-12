require 'yaml'

module Jekyll
  module MyUtils

    def self.extract_front_matter(file_path)
      content = File.read(file_path, encoding: 'utf-8')
      if content =~ /\A(---\s*\n.*?\n?)^(---\s*$\n?)/m
        YAML.safe_load($1) || {}
      else
        {}
      end
    end

  end
end
