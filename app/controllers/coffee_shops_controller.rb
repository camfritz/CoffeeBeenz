class CoffeeShopsController < ApplicationController

	def index
		@coffee_shops = CoffeeShop.all
	end

	def new
		@coffee_shop = CoffeeShop.new
	end

	def create
    @coffee_shop = CoffeeShop.new(name: params[:coffee_shop][:name], city: params[:coffee_shop][:city])
    @coffee_shop.save!
    redirect_to coffee_shops_url
	end

end
