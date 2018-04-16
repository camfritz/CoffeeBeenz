class CreatesCoffeeShop
	attr_accessor :name, :coffee_shop, :closing_time, :popularity, :city, :bean_origin

	def initialize(name: "")
		@name = name
		@bean_origin = bean_origin
	end

	def build
		self.coffee_shop = CoffeeShop.new(name: name)
		coffee_shop.closing_time = closing_time
		coffee_shop.popularity = popularity
		coffee_shop.city = city
		coffee_shop.bean_origin = bean_origin
	end

	def create
		build
		coffee_shop.save
	end


end