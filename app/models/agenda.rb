class Agenda < ActiveRecord::Base
  belongs_to :user
  belongs_to :viaem
end
