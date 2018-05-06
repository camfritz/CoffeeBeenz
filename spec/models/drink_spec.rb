require 'rails_helper'

#define custom matcher have_coffee_shop
RSpec::Matchers.define :have_coffee_shop do |expected|
	match do |actual|
		expect(:coffee_shops).not_to be_empty
	end
end

RSpec::Matchers.define :be_togo do |expected|
	match do |actual|
		expect(actual.togo).to eq(false)
	end
end

# expect drink to respond to coffee_shops

RSpec.describe Drink, type: :model do
	# let(:drink) {Drink.new}
	let(:drink) { FactoryBot.build_stubbed(:drink) }

	it "expects drink to respond to coffee shops" do
		expect(drink).to respond_to(:coffee_shops)
	end

	it "expects a drink to have at least one coffee shop" do
		expect(drink).to have_coffee_shop
	end

	it "expects a drink to not be for togo" do
		expect(drink).not_to be_togo
	end

	it "expects a drink to have a name" do
		expect(drink.name).to_not be_nil
	end

	it "expects a drink to have a size" do
		expect(drink.size).to_not be_nil
	end

	it "expects a drink to have a bean" do
		expect(drink.bean).to_not be_nil
	end

	it { should validate_presence_of(:name) }
	it { should have_and_belong_to_many(:coffee_shops) }
	it { should validate_presence_of(:bean) }
end