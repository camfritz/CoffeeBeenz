require_relative 'coffee_shop'

class Project
	def initialize
		@shop = CoffeeShop.new(50, 10)
	end

	def done?
		return true
	end

	attr_accessor :shop
end