
require 'httparty'

class RequestException < StandardError
end 

class Request
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