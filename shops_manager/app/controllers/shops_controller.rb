class ShopsController < ApplicationController
	def index
		
		#GEOKIT NOT WORKING =>
		if params[:latitude] and params[:longitude]
			if params[:rad]
				@shop = Shop.within(50, :units => :kms, :origin => [47.792,2.393])
				#@results = Shop.within(:rad, :units => :kms, :origin => [:latitude, :longitude])
				#en remplaçant par latitude, longitude et radius la il ne trouve pas la method to_f. Surement un problème de configuration du plugin
				#que je n'arrive pas à résoudre
			end
			if params[:nb_shops]
				origin = [:latitude, :longitude]
				@distance = Shop.distance_sql(origin, units = :kms, formula = :sphere)
				#@shop = 
			end

		else
			@shop = Shop.all
    	end


    	#autres plugins essayés mais plus de problèmes encore

    	#GRATICULE
    	#distance_sql=Graticule::Distance::Spherical.to_sql(:latitude => :latitude, :longitude => :longitude, :units => :kilometers)
    	#@results = Shop.all(:conditions => [ "#{distance_sql} <= #{params[:rad]}" ])
    	#@results = Shop.all(:within => :rad, :origin => [:latittude, :longitude], :units => :kilometers)

    	#GEODISTANCE

  	end

	def show
    	@shop = Shop.find(params[:id])
  	end

	def new
		@shop = Shop.new
	end

	def edit
  		@shop = Shop.find(params[:id])
	end

	def create
	  @shop = Shop.new(shop_params)
 
	  if @shop.save
	    redirect_to @shop
	  else
	    render 'new'
	  end
	end

	def update
	  @shop = Shop.find(params[:id])
	 
	  if @shop.update(shop_params)
	    redirect_to @shop
	  else
	    render 'edit'
	  end
	end

	def destroy
	  @shop = Shop.find(params[:id])
	  @shop.destroy
	 
	  redirect_to shops_path
	end
 
	private
	  def shop_params
	  	params.require(:shop).permit(:chain, :name, :latittude, :longitude, :address, :city, :zip, :phone, :coutry_code)
	  end

	  def around
	  	
	  end

	  def close_to
	  end

end
