# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110826162902) do

  create_table "cattle_ids", :force => true do |t|
    t.integer  "ear_id"
    t.integer  "siiniga_id"
    t.string   "sanitary_certificate"
    t.string   "breeder_name"
    t.string   "breeder_place"
    t.string   "breed"
    t.integer  "age"
    t.float    "start_weight"
    t.float    "end_weight"
    t.integer  "lote_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lotes", :force => true do |t|
    t.integer  "num_lote"
    t.integer  "total_cattle"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
