require "rails_helper"
RSpec.describe "adding a coffee shop", type: :system do
	it "allows a user to create a coffee shop" do
		visit new_coffee_shop_path
		fill_in "Name", with: "Backporch Coffee"
		fill_in "City", with: "Bend"
		fill_in "Bean origin", with: "Fake Origin"
		click_on("Create Coffee shop")
		visit coffee_shops_path
		expect(page).to have_content("Backporch Coffee")
		expect(page).to have_content("Bend")
	end

	it "allows a user to create a coffee shop with varied attributes" do
		visit new_coffee_shop_path
		fill_in "Name", with: "PDX Coffee"
		fill_in "City", with: "Portland"
		fill_in "Bean origin", with: "Columbia"
		click_on("Create Coffee shop")
		visit coffee_shops_path
		expect(page).not_to have_content("Bend")
		expect(page).not_to have_content("Backporch Coffee")

	end

	it "does not allow a user who creates a coffee shop without necessary values to see a blank form" do
		visit new_coffee_shop_path
		fill_in "Name", with: ""
		fill_in "City", with: ""
		fill_in "Bean origin", with: ""
		click_on("Create Coffee shop")
		expect(page).to have_selector(".new_coffee_shop")
	end

	it "does not allow a user to create a coffee shop with one attribute" do
		visit new_coffee_shop_path
		fill_in "Name", with: "PDX Coffee"
		fill_in "City", with: ""
		fill_in "Bean origin", with: ""
		click_on("Create Coffee shop")
		expect(page).to have_selector(".new_coffee_shop")
	end
end