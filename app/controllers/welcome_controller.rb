require "httparty"

class WelcomeController < ApplicationController

	def index

		@random = rand(110).to_i

		@response = HTTParty.get("http://api.giphy.com/v1/gifs/search?q=dachshund&api_key=dc6zaTOxFJmzC&limit=116").parsed_response["data"][@random]["images"]["original"]["url"]

		cl = Colourlovers::Client.new
		@color = cl.random_color["hex"]
	end

end
