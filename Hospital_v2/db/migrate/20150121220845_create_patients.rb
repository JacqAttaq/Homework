class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :d_o_b
      t.string :description
      t.boolean :gender
      t.string :blood_type

      t.timestamps null: false
    end
  end
end
