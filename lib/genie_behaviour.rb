class GenieBehaviour
    attr_accessor  :parser, :scrapper

    def initialize(parser, scapper)
    end

    def scrape
        raise "implement scrape method"
    end

    def parse(data=nil)
        raise "implement parse method"
    end

    def fetch_content
        raise "fetch conten"
    end

end