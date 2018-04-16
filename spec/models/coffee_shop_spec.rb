###Coffee Shop Unit Tests###

# require "rails_helper"

# RSpec.describe CoffeeShop do

# 	it "considers a coffee shop that is open late (after 5pm)" do
# 		backporch_coffee = CoffeeShop.new("Backporch Coffee", 16, 11, "Bend", "Columbia")
# 		pdx_coffee = CoffeeShop.new("PDX Coffee", 20, 8, "Portland", "Rwanda")
# 		expect(backporch_coffee.open_late?).not_to be_truthy
# 		expect(pdx_coffee.open_late?).to be_truthy
# 	end

# 	it "considers a coffee shop with an acceptable popularity (>= 10)" do
# 		backporch_coffee = CoffeeShop.new("Backporch Coffee", 16, 11, "Bend", "Columbia")
# 		pdx_coffee = CoffeeShop.new("PDX Coffee", 20, 8, "Portland", "Rwanda")
# 		expect(backporch_coffee.popularity_is_acceptable?).to be_truthy
# 		expect(pdx_coffee.popularity_is_acceptable?).not_to be_truthy
# 	end

# 	it "considers if a coffee shop is located within Bend" do
# 		backporch_coffee = CoffeeShop.new("Backporch Coffee", 16, 11, "Bend", "Columbia")
# 		pdx_coffee = CoffeeShop.new("PDX Coffee", 20, 8, "Portland", "Rwanda")
# 		expect(backporch_coffee.is_in_bend?).to be_truthy
# 		expect(pdx_coffee.is_in_bend?).not_to be_truthy
# 	end

# 	it "considers a coffee shop with beans from Columbia to be acceptable" do
# 		backporch_coffee = CoffeeShop.new("Backporch Coffee", 16, 11, "Bend", "Columbia")
# 		pdx_coffee = CoffeeShop.new("PDX Coffee", 20, 8, "Portland", "Rwanda")
# 		expect(backporch_coffee.has_beans_from_columbia?).to be_truthy
# 		expect(pdx_coffee.has_beans_from_columbia?).not_to be_truthy
# 	end

# end