require 'dotenv/load'
require 'net/http'
require 'json'
require 'yaml'

module Jekyll
  class SummaryGenerator < Jekyll::Generator
    safe true
    priority :lowest

    def generate(site)
      return if ENV['JEKYLL_ENV'] == 'production'

      @api_key = ENV['GEMINI_KEY']
      @site = site
      
      process_doc_folder
    end

    private

    def process_doc_folder
      doc_folder = File.join(@site.source, '_doc')
      Dir.glob(File.join(doc_folder, '**', '*.md')).each do |file|
        content = File.read(file)
        front_matter, markdown_content = extract_front_matter_and_content(content)
        
        if front_matter['summary'] == true
          summary = generate_summary(markdown_content)
          front_matter['summary'] = summary
          File.write(file, YAML.dump(front_matter) + "---\n" + markdown_content)
        end
      end
    end

    def extract_front_matter_and_content(content)
      if content =~ /\A(---\s*\n.*?\n?)^(---\s*$\n?)/m
        front_matter = YAML.safe_load($1)
        content_without_front_matter = content.sub(/\A---\s*\n.*?\n?---\s*$\n?/m, '')
        [front_matter, content_without_front_matter]
      else
        [{}, content]
      end
    end

    def generate_summary(markdown_content)
      return "API key not set" if @api_key.nil? || @api_key.empty?

      uri = URI('https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent')
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true

      headers = {
        'Content-Type' => "application/json",
        'x-goog-api-key' => @api_key
      }

      query = <<~TEXT
        문서 내용을 기반으로 한 문장(150자 내외)으로 요약(summary)
        - '이 문서는~', '~다' 등의 표현은 사용하지 말고 단문형으로 작성
        - 핵심 정보만 포함하고 불필요한 서두나 종결어는 제거
      TEXT

      body = {
        contents: [
          {
            role: "user",
            parts: [
              { text: "문서 내용:\n#{markdown_content}" }
            ]
          },
          {
            role: "user",
            parts: [
              { text: "질의: #{query}" }
            ]
          }
        ]
      }.to_json

      request = Net::HTTP::Post.new(uri, headers)
      request.body = body
      response = http.request(request)

      puts "Response Body: #{response.body}" 

      if response.is_a?(Net::HTTPSuccess)
        data = JSON.parse(response.body)
        text = data.dig("candidates", 0, "content", "parts", 0, "text").to_s
        single_line = text.gsub(/\r?\n/, ' ').strip
      else
        
      end

    rescue => e
      "#{e.message}"
    end
  end
end