require "rails_helper"
RSpec.describe CreatesCoffeeShop do
  it "creates a project given a name" do
    coffee_shop = CreatesCoffeeShop.new(name: "Backporch Coffee")
    coffee_shop.build
    expect(coffee_shop.project.name).to eq("Backporch Coffee")
  end
end