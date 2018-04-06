class CoffeeShop
	def initialize(distance, popularity)
		@distance = distance
		@popularity = popularity
	end

	def withinLocalRange?
		if @distance < 100
			return true
		else
			return false
		end
	end

	def popularityMinimumTen?
		if @popularity >= 10
			return true
		else
			return false
		end
	end
end