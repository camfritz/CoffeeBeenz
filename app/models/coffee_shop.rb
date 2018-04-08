class CoffeeShop
	attr_accessor :distance
	attr_accessor :popularity
	attr_accessor :price
	attr_accessor :outdoorSeating
	def initialize(distance, popularity, price, outdoorSeating)
		@distance = distance
		@popularity = popularity
		@price = price
		@outdoorSeating = outdoorSeating
	end

	def within_local_range?
		return @distance < 100
	end

	def popularity_is_acceptable?
		return @popularity >= 10
	end

	def is_affordable?
		return @price <= 4
	end

	def has_outdoor_seating?
		return @outdoorSeating > 0
	end
end