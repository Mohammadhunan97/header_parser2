class TagController < ApplicationController
	def index
		@tag = Tag.all
		@tag.each do |tag| 
			url = Url.find_by(id: tag.url_id)
			@myurl = url.url
		end
	end
end
