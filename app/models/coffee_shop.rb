class CoffeeShop
	attr_accessor :closing_time
	attr_accessor :popularity
	attr_accessor :city
	attr_accessor :bean_origin
	def initialize(closing_time, popularity, city, bean_origin)
		@closing_time = closing_time
		@popularity = popularity
		@city = city
		@bean_origin = bean_origin
	end

	def open_late?
		return @closing_time > 17
	end

	def popularity_is_acceptable?
		return @popularity >= 10
	end

	def is_in_bend?
		return @city == "Bend"
	end

	def has_beans_from_columbia?
		return @bean_origin == "Columbia"
	end
end
