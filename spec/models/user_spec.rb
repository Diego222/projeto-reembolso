require "rails_helper"
require "spec_helper"

RSpec.describe User, :type => :model do
  it "orders name" do
    usuario = User.create!(name: "Gabriel", email: "gabriel@hotmail.com", password: "12345678", password_confirmation: "12345678")
    usuario1 = User.name
    expect(User.name).to eq(usuario1)
  end
end

