class CreatesCoffeeShop
	attr_accessor :name, :coffee_shop, :closing_time, :popularity, :city, :bean_origin

	def initialize(name: "", closing_time: 0, popularity: 0, city: "", bean_origin: "")
		@name = name
		@closing_time = closing_time
		@popularity = popularity
		@city = city
		@bean_origin = bean_origin
	end

	def build
		self.coffee_shop = CoffeeShop.new
	end

end