require "rails_helper"

RSpec.describe CreatesCoffeeShop do
  it "creates a coffee shop given its variables" do
    creator = CreatesCoffeeShop.new(name: "Backporch Coffee", closing_time: 17, popularity: 10, city: "Bend", bean_origin: "Columbia")
    creator.build
    expect(creator.coffee_shop.name).to eq("Backporch Coffee")
  end
end