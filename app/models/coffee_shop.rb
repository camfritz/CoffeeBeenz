class CoffeeShop
	attr_accessor :name, :closing_time, :popularity, :city, :bean_origin

	def initialize(name, closing_time, popularity, city, bean_origin)
		@name = name
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
