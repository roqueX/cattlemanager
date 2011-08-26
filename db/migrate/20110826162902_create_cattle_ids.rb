class CreateCattleIds < ActiveRecord::Migration
  def self.up
    create_table :cattle_ids do |t|
      t.integer :ear_id
      t.integer :siiniga_id
      t.string :sanitary_certificate
      t.string :breeder_name
      t.string :breeder_place
      t.string :breed
      t.integer :age
      t.float :start_weight
      t.float :end_weight
      t.integer :lote_id

      t.timestamps
    end
  end

  def self.down
    drop_table :cattle_ids
  end
end
