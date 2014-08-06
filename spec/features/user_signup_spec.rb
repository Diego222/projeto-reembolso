require 'rails_helper'

feature "User Sign up" do
	scenario "Sign up" do
		user = FactoryGirl.create(:user)

		visit new_user_registration_path
		fill_in "Name", with: user.name
		fill_in "Email", with: user.email
		fill_in "Password", with: user.password
		fill_in "Password confirmation", with: user.password
		
		click_button "Sign up"
	end
end