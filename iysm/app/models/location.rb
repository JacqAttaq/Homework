class Location < ActiveRecord::Base
  has_many :course_locations
  has_many :courses, through: :course_locaiton
end
