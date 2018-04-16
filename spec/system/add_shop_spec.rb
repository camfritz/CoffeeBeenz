require "rails_helper"
RSpec.describe "adding a coffee shop", type: :system do
	it "allows a user to create a coffee shop" do
		visit new_coffee_shop_path
		fill_in "Name", with: "Backporch Coffee"
		fille_in "City", with: "Bend"
		fill_in "Beans", with: "Pelaton:Columbia\nBrasil:Brazil"
		click_on("Create Coffee Shop")
		visit coffee_shops_path
		expect(page).to have_content("Backporch Coffee")
		expect(page).to have_content("Columbia")
	end

	it "allows a user to create a coffee shop with varied attributes" do
		visit new_coffee_shop_path
		fill_in "Name", with: "PDX Coffee"
		fill_in "City", with: "Portland"
		fill_in "Beans", with: "Pelaton:Columbia\nBrasil:Brazil"
		click_on("Create Coffee Shop")
		visit coffee_shops_path
		expect(page).not_to have_content("Bend")
		expect(page).not_to have_content("Backporch Coffee")

	end

	it "allows a user to create a coffee shop with no attributes" do
		visit new_coffee_shop_path
		fill_in "Name", with: ""
		fill_in "City", with: ""
		fill_in "Beans", with: ""
		click_on("Create Coffee Shop")
		visit coffee_shops_path
		expect(page).to be_empty
	end
end
