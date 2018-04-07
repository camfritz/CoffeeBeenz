class CoffeeShop
	attr_accessor :distance
	attr_accessor :popularity
	def initialize(distance, popularity)
		@distance = distance
		@popularity = popularity
	end

	def within_local_range?
		return @distance < 100
	end

	def popularity_is_acceptable?
		return @popularity >= 10
	end
end