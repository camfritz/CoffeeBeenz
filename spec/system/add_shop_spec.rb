require "rails_helper"
RSpec.describe "adding a coffee shop", type: :system do
	it "allows a user to create a coffee shop" do
		visit new_coffee_shop_path
		fill_in "Name", with: "Backporch Coffee"
		fille_in "City", with: "Bend"
		fill_in "Beans", with: "Pelaton:Columbia\nBrasil:Brazil"
		click_on("Create Project")
		visit coffee_shops_path
		expect(page).to have_content("Backporch Coffee")
		expect(page).to have_content("Columbia")
	end

end
