require "rails_helper"

RSpec.describe Project do
	it "considers a project with no tasks to be done" do
		project = Project.new
		expect(project.done?).to be_truthy
	end

	it "considers a coffee shop that is within local range" do
		project = Project.new
		coffee_shop = project.shop
		expect(coffee_shop.withinLocalRange?).to be_truthy
	end

	it "considers a coffee shop with a popularity of 10 or greater" do
		project = Project.new
		coffee_shop = project.shop
		expect(coffee_shop.popularityMinimumTen?).to be_truthy
	end
end