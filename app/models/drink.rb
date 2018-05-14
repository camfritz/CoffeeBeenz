class Drink < ApplicationRecord

	has_and_belongs_to_many :coffee_shops

	validates :name, presence: true
	validates :bean, presence: true

  def brew(coffee)
    coffee.make
    "coffee time!"
  end

end
