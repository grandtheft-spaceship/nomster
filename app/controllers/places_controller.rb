class PlacesController < ApplicationController
	def index 
		@places = Place.all
		@places = Place.order("name")
		@places = Kaminari.paginate_array(@places).page(params[:page]).per(3)
	end
end
