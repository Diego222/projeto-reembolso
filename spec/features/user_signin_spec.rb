require 'rails_helper'

	feature "Sign in" do
		scenario "User Sign in" do
		user = FactoryGirl.create(:user)
		visit new_user_session_path

		fill_in "Email", with: user.email
		fill_in "Password", with: user.password
		click_button "Sign in"

		end
	end