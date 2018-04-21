class CoffeeShop < ApplicationRecord

	validates :name, presence: true
	validates :city, presence: true
	validates :bean_origin, presence: true

	def open_late?
		return self.closing_time > 17
	end

	def popularity_is_acceptable?
		return self.popularity >= 10
	end

	def is_in_bend?
		return self.city == "Bend"
	end

	def has_beans_from_columbia?
		return self.bean_origin == "Columbia"
	end
end
