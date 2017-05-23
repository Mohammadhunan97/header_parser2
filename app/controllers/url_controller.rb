require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pp'


class UrlController < ApplicationController
	def index
	end
	def create
		Url.create(url: params[:url])
		current_id = Url.find_by(url: params[:url]).id
		pp current_id

		doc = Nokogiri::HTML(open(params[:url]))

		doc.css('a', 'h3', 'h2', 'h1').each do |tag|

 			Tag.create(tagtype: tag.name, content: tag.content, url_id: current_id)
		end

		redirect_to action: "show", id: current_id
	end

	def show
		puts params
		@url =  Url.find_by(id: params[:id]).url
		@tag = Tag.where(url_id: params[:id])
	end

end
