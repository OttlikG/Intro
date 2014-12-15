class CreateLevels < ActiveRecord::Migration
  create_table :levels do |t|
    t.string :name
  end
end
