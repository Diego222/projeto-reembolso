class Custo < ActiveRecord::Base
  belongs_to :viagem
  belongs_to :tipo
  validates :tipo, presence: true
  validates :valor, presence: true

  has_attached_file :cover, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  		validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/

  		#def self.to_csv(options = {})
  #CSV.generate(options) do |csv|
   # csv << column_names
    #all.each do |custo|
     # csv << custo.attributes.values_at(*column_names)
   # end
  #end
#end
#<% @viagem.custos.each do |custo| %>

def self.export_csv(custos)
  CSV.generate() do |csv|
    csv << ['Data','Destino','Valor']
    custos.each do |custo|
      csv << [    
                custo.current_user.name,
                custo.data,
                custo.viagem.name,
                custo.valor
                
                ]
    end
  end
end

  
end
