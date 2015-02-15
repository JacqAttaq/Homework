class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :github_name
      t.boolean :admin_status

      t.timestamps null: false
    end
  end
end
