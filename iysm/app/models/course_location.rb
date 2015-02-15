class CourseLocation < ActiveRecord::Base
  belongs_to :course
  belongs_to :location
  has_many :users, through: :user_course_location
end
