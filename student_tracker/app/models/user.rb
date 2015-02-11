class User < ActiveRecord::Base
  has_many :submissions
  has_many :assignments
  has_many :comments, as: :commentable
  has_many :user_course_locations
  has_many :courses, through: :user_course_locations
end
