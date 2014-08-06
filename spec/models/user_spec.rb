require "rails_helper"



describe User do
  it {should validate_presence_of :name}
  it {should ensure_length_of :name}
  it {should validate_presence_of :email}
  it {should validate_numericality_of :password}

end









#describe User do
	#subject {create(:user)}

	#its(:name) {should == 'diego'}
	#its(:email) {should == 'diego@example.com'}
	#it {should_not be_admin}
#end

#RSpec.describe User do
 # it "validate name" do
  #  usuario = User.create!(name: "Gabriel", email: "gabriel@hotmail.com", password: "12345678", password_confirmation: "12345678")
   # usuario1 = User.name
   #expect(User.name).to eq(usuario1)
  #end
#end



