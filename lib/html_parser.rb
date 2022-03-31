require 'nokogiri' #parsing gem

class HtmlParser < Parser
    attr_accessor :html, :host

    def parse
        @html = Nokogiri::HTML(data)
        @result = []
    end 

    def images  
        images_from_html
    end

    def images_from_html
        @result += html.elements.search("img").map(&:attributes).flatten.map do |a|
            if a["src"]
              val = a["src"].value 
              unless val.match /http[s]/ 
                val = host + val  
              end
              val
            end
        end.compact
    end
end
