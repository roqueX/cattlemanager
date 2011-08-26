class CattleId < ActiveRecord::Base

  belongs_to :lote

  validates_presence_of :ear_id
  validates_presence_of :age
  validates_presence_of :start_weight
  validates_presence_of :end_weight
  validates_presence_of :lote_id
  
  validates_length_of :siiniga_id, :is => 12
  validates_length_of :sanitary_certificate, :maximun => 16
  validates_length_of :breeder_name, :maximun => 24
  validates_length_of :breeder_place, :maximun => 16
  validates_length_of :breed, :maximun => 8

end
