
require 'httparty'

class Request
    class RequestException < StandardError
    end 
    attr_accessor :url
    def initialize(url) 
        @url = url
    end

    def call
        HTTParty.get(url)
    rescue RequestException => e 
        puts e.message 
        raise e
    end
end