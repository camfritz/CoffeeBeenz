require "rails_helper"
RSpec.describe "adding a coffee shop", type: :system do
	it "allows a user to create a coffee shop" do
		visit new_project_path
		fill_in "Name", with: "Backporch Coffee"
		fille_in "City", with: "Bend"
		fill_in "Beans", with: "Pelaton:Columbia\nBrasil:Brazil"
		click_on("Create Project")
		visit projects_path
		expect(page).to have_content("Backporck Coffee")
		expect(page).to have_content("Columbia")
	end

end
