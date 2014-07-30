class Viagem < ActiveRecord::Base
	#has_many :calendarios, dependent: :destroy
	#has_many :users, through: :calendarios
	belongs_to :user #retirar se não funcionar

	has_many :custos, dependent: :destroy

	validates :name, presence: true

	
end


