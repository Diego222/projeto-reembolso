class Viagem < ActiveRecord::Base
	#has_many :calendarios, dependent: :destroy
	#has_many :users, through: :calendarios
	belongs_to :user #retirar se não funcionar

	has_many :custos, dependent: :destroy

	validates :name, presence: true

	def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |viagem|
      csv << viagem.attributes.values_at(*column_names)
    end
  end
end
end
