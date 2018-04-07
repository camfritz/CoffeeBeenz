require "rails_helper"

RSpec.describe CoffeeShop do
	back_porch_coffee = CoffeeShop.new(75, 11)
	pdx_coffee = CoffeeShop.new(170, 8)

	it "considers a coffee shop that is within local range (<= 100)" do
		expect(back_porch_coffee.within_local_range?).to be_truthy
	end

	it "considers a coffee shop with an acceptable popularity (>= 10)" do
		expect(back_porch_coffee.popularity_is_acceptable?).to be_truthy
	end

	it "considers a coffee shop that is not within local range (> 100)" do
		expect(pdx_coffee.within_local_range?).to be_falsy
	end

	it "considers a coffee shop with an unacceptable popularity (< 10)" do
		expect(pdx_coffee.popularity_is_acceptable?).to be_falsy
	end

end