class CoffeeShopsController < ApplicationController

	def index
		@coffee_shops = CoffeeShop.all
	end

	def new
		@coffee_shop = CoffeeShop.new
	end

	def create
		@coffee_shop = CoffeeShop.new(name: params[:coffee_shop][:name], city: params[:coffee_shop][:city], bean_origin: params[:coffee_shop][:bean_origin])
		if @coffee_shop.save
			redirect_to coffee_shops_url
		else
			render :new
		end
	end

end
