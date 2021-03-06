###Coffee Shop Unit Tests###
require "rails_helper"
require'rspec/expectations'

#define custom matcher 'have_drink'
RSpec::Matchers.define :have_drink do |expected|
	match do |actual|
		expect(:drinks).not_to be_empty
	end
end

# expect coffee_shop to respond to drinks
RSpec.describe CoffeeShop, type: :model do
	let(:coffee_shop) { FactoryBot.build_stubbed(:coffee_shop) }

	it "expects a coffee shop to respond to drinks" do
		expect(coffee_shop).to respond_to :drinks
	end

	it "expects a coffee shop to have at least one drink" do
		expect(coffee_shop).to have_drink
	end

	it "expects a coffee shop to not have a closing time" do
		expect(coffee_shop.has_closing_time?).to eq(false)
	end

	it "expects a coffee shop to have a name" do
		expect(coffee_shop.has_name?).to eq(true)
	end

	it "expects a coffee shop to not be in Bend" do
		expect(coffee_shop).not_to be_is_in_bend
	end

	describe "test doubles"

	it "stubs a customer" do
		expect(coffee_shop).to receive(:customer).and_return "Customer 1"
		expect(coffee_shop.customer).to eq("Customer 1")
	end

	it "serves a customer" do
		expect(coffee_shop.serve_customer(FakeCustomer.new)).to be_truthy
	end
end
