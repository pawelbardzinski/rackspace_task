class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :pet_name
      t.string :pet_type
      t.string :breed
      t.integer :age
      t.integer :weight
      t.date :last_visit_date

      t.timestamps
    end
  end
end
