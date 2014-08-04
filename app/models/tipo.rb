class Tipo < ActiveRecord::Base
	has_many :custos, dependent: :destroy
	validates :description, uniqueness: true
	validates :description, presence: true
end
