class ShopsController < ApplicationController
	def new
	end

	def create
		render plain: params[:shop].inspect
	end
end
