class ShopsController < ApplicationController
	def index
    	@shop = Shop.all
  	end

	def show
    	@shop = Shop.find(params[:id])
  	end

	def new
	end

	def create
	  @shop = Shop.new(shop_params)
	 
	  @shop.save
	  redirect_to @shop
	end
 
	private
	  def shop_params
	    params.require(:shop).permit(:chain, :name, :latittude, :longitude, :address, :city, :zip, :phone, :coutry_code)
	  end
end
