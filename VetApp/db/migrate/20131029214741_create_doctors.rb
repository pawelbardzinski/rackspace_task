class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :school_degree_from
      t.integer :years_of_experience

      t.timestamps
    end
  end
end
