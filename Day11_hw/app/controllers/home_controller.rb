class HomeController < ApplicationController
	def index
		@prizes = Prize.all
	end
end
