class CreatesCoffeeShop
	attr_accessor :name, :coffee_shop, :closing_time, :popularity, :city, :bean_origin

	def initialize(name: "", closing_time: 0, popularity: 0, city: "", bean_origin: "")
		@name = name
		@closing_time = closing_time
		@popularity = popularity
		@city = city
		@bean_origin = bean_origin
		@success = false
	end

	def success?
		@success
	end

	def build
		self.coffee_shop = CoffeeShop.new(name: name, city: city, bean_origin: bean_origin)
		coffee_shop.save
		@success = success?
	end

end