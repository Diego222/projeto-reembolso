class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :viagems

  validates :name, presence: true
  validates :email, uniqueness: true
  #validates :password, numericality: true
  validates_length_of :name, maximum: 20
  

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

        has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  		validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

     
end
