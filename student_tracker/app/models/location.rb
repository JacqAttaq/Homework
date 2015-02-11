class Location < ActiveRecord::Base
  has_many :courses
  has_many :courses, through: :course_location
end
