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

          if summary.is_a?(String) && !summary.empty?
            front_matter['summary'] = summary
            File.write(file, YAML.dump(front_matter) + "---\n" + markdown_content)
          else
            Jekyll.logger.warn "SummaryGenerator:", "Skipped writing #{file} — summary generation failed or returned empty."
          end
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
      return nil if @api_key.nil? || @api_key.empty?

      uri = URI('https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent')
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true

      headers = {
        'Content-Type' => "application/json",
        'x-goog-api-key' => @api_key
      }

      query = <<~TEXT
        문서가 다루는 개념의 요약문을 작성해라
        - 형식: "[핵심 구성 요소·도메인 용어·기술명 나열]을 포괄하는 [개념]에 대한 개요"
        - 예시: "데이터 정의·분류·표현, 아키텍처, ETL 파이프라인, DBMS를 포괄하는 데이터에 대한 개요"
        - 구성 요소는 ·로 연결하고 핵심 기술명은 명시적으로 포함
        - 한 문장으로 작성, 메타 표현('이 문서는', '~에 대해 설명한다') 제외
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

      if response.is_a?(Net::HTTPSuccess)
        data = JSON.parse(response.body)
        text = data.dig("candidates", 0, "content", "parts", 0, "text").to_s
        single_line = text.gsub(/\r?\n/, ' ').strip
        single_line.empty? ? nil : single_line
      else
        Jekyll.logger.error "SummaryGenerator:", "API error #{response.code}: #{response.message}"
        nil
      end

    rescue => e
      Jekyll.logger.error "SummaryGenerator:", "Exception: #{e.message}"
      nil
    end
  end
end
