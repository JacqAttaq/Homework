class Course < ActiveRecord::Base
  has_many :locations
  has_many :locations, through: :course_locations
end
