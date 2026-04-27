module Jekyll
  module MyUtils

    def self.extract_front_matter(file_path)
      content = File.read(file_path)
      if content =~ /^(---\s*\n.*?\n?)^(---\s*$\n?)/m
        YAML.safe_load($1) || {}
      else
        {}
      end
    end

  end
end