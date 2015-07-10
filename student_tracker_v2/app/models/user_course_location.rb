class UserCourseLocation < ActiveRecord::Base
  belongs_to :course_location
  belongs_to :user
end
