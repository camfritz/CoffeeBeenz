class CoffeeShopsController < ApplicationController
	def new
		@coffee_shop = CoffeeShop.new
	end
end