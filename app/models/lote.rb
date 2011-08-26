class Lote < ActiveRecord::Base

  has_many :cattle_id
  
  validates_presence_of :num_lote
  validates_presence_of :total_cattle
  validates_presence_of :start_date
  validates_presence_of :end_date

end
