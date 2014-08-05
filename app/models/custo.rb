class Custo < ActiveRecord::Base
  belongs_to :viagem
  belongs_to :tipo
  #validates :tipo, presence: true
  validates :valor, presence: true
  validates :cover, :attachment_presence => true

  has_attached_file :cover, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
      validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/

  		

def self.export_csv(custos)
  CSV.generate() do |csv|
    csv << ['Data','Destino','Valor']
    custos.each do |custo|
      csv << [    
                
                custo.data,
                custo.viagem.name,
                custo.valor
                
                ]
    end
  end
end

  
end
