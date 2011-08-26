class CreateLotes < ActiveRecord::Migration
  def self.up
    create_table :lotes do |t|
      t.integer :num_lote
      t.integer :total_cattle
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end

  def self.down
    drop_table :lotes
  end
end
