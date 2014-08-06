require 'rails_helper'

	feature "New Tipo" do
		scenario "Tipo" do
		user = FactoryGirl.create(:user)

		visit new_user_session_path
		fill_in "Email", with: user.email
		fill_in "Password", with: user.password
		click_button "Sign in"

		tipo = FactoryGirl.create(:tipo)
		visit new_tipo_path
		fill_in "Description", with: tipo.description
		click_button "Create Tipo"

		visit tipos_path
		
	end
end