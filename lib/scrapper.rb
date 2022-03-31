class Scrapper < ScrapperBehaviour
    attr_accessor :url
    
    def url=(address)
        @url = URI(address)
    end

    def scrape  
        Request.new(url).call
    end
end
