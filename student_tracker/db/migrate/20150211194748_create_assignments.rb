class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :name
      t.text :requirements
      t.integer :user_id
      t.string :workflow_state
      t.timestamps null: false
    end
    
    create_table :submission do |t|
      t.string :title
      t.integer :assignment_id
      t.integer :user_id
      t.string :workflow_state

      t.timestamps null: false
    end
  end
end
