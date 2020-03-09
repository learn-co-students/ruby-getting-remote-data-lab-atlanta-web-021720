require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
    attr_accessor :url

    def initialize(url)
        @url = url
    end

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        result = JSON.parse(self.get_response_body)
    end

# The tests in this lab will use your code to send a request for some JSON data, located at 
#https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json. Read the test 
#error messages for additional as you work for additional information. Don't forget to require the 
#necessary Ruby modules and classes!

end