module Jekyll
  class ConfigGenerator < Jekyll::Generator
    safe true
    priority :highest

    def generate(site)
      if Jekyll.env == 'production'
        site.config['url'] = 'https://underpage.github.io'
      else
        site.config['url'] = 'http://localhost:4000'
      end
    end
    
  end
end