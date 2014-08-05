require 'rails_helper'


describe Viagem do
	it {should validate_presence_of :name}
	it { should belong_to :user}
end

