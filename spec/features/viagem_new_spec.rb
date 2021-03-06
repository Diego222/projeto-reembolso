require 'rails_helper'

	feature "New Viagem" do
		scenario "Viagem" do
		user = FactoryGirl.create(:user)

		visit new_user_session_path
		fill_in "Email", with: user.email
		fill_in "Password", with: user.password
		click_button "Sign in"

		viagem = FactoryGirl.create(:viagem)
		visit new_viagem_path
		fill_in "Name", with: viagem.name
		#fill_in "Date", with: viagem.date
		click_button "Create Viagem"

		visit viagems_path
	end
end
