#require "rails_helper"

#feature "Tipo management" do
 # scenario "User creates a new tipo" do
  #  visit "/tipos/new"

   # fill_in "Description", :with => "Teste"
    #click_button "Create Tipo"

    #expect(page).to have_text("Tipo was successfully created.")
  #end
#end

require 'rails_helper'


feature "Login" do
scenario "User" do
user = FactoryGirl.create(:user)
visit new_user_session_path

fill_in "Email", with: user.email
fill_in "Password", with: user.password
click_button "Log in"
end

end