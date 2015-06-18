require "httparty"

class WelcomeController < ApplicationController

	def index

		@random = rand(120).to_i

		@response = HTTParty.get("http://api.giphy.com/v1/gifs/search?q=dachshund&api_key=dc6zaTOxFJmzC&limit=116").parsed_response["data"][@random]["images"]["original"]["url"]

		@color = "%06x" % (rand * 0xffffff)
	end

end
