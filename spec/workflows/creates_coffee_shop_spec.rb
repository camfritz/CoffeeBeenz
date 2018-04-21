require "rails_helper"

RSpec.describe CreatesCoffeeShop do
	it "creates a coffee shop given its variables" do
		creator = CreatesCoffeeShop.new(name: "Backporch Coffee", closing_time: 17, popularity: 10, city: "Bend", bean_origin: "Columbia")
		creator.build
		expect(creator.coffee_shop.name).to eq("Backporch Coffee")
	end
end


RSpec.describe "failure cases" do
	it "fails when trying to create a coffee shop with missing atrributes" do
		creator = CreatesCoffeeShop.new(name: "", closing_time: 17, popularity: 10, city: "", bean_origin: "")
		creator.build
		expect(creator).not_to be_a_success
	end
end