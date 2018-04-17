class CoffeeShopsController < ApplicationController

	def index
		@coffee_shops = CoffeeShop.all
	end

	def new
		@coffee_shop = CoffeeShop.new
	end

	def create

	end

end
