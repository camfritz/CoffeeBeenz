require 'rails_helper'

# expect drink to respond to coffee_shops

RSpec.describe Drink, type: :model do
  it "expects drink to respond to coffee shops" do
    latte = Drink.new()
    expect(latte).to respond_to(:coffee_shops)
  end
end
