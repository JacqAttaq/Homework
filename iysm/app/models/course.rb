class Course < ActiveRecord::Base
  has_many :course_locations
  has_many :locations, through: :course_locations
end
