
class Genie < GenieBehaviour
    attr_accessor  :parser, :scrapper, :data, :url

    def initialize(url, scrapper=HtmlScrapper.new, parser=HtmlParser.new)
      @url = URI(url)
      @parser = parser
      @parser.host = @url.host
      @scrapper = scrapper
    end

    def scrape
      scrapper.url = url
      @data = scrapper.scrape
    end
 
    def parse
      parser.data = data
      parser.parse
    end

    def fetch_content
      scrape 
      parse
      nil
    end

    def images 
      parser.images
    end
end 



