class CreateUserCourseLocations < ActiveRecord::Migration
  def change
    create_table :user_course_locations do |t|
      t.string :course_location_id
      t.string :user_id

      t.timestamps null: false
    end
  end
end
