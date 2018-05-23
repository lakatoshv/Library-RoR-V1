class IndexController < ApplicationController
	def index
		if session[:lang]
		else
			session[:lang] = "ua"
		end
	end
end
