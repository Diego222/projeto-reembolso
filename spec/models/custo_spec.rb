require 'rails_helper'

describe Custo do
it {should validate_presence_of :valor}
it {should validate_presence_of :cover}
it { should belong_to :viagem}
it { should belong_to :tipo}
end