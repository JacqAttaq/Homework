class CreateUserCourseLocations < ActiveRecord::Migration
  def change
    create_table :user_course_locations do |t|
      t.integer :course_location_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
