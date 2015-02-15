class User < ActiveRecord::Base
  has_many :submissions, dependent: :destroy
  has_many :assignments, dependent: :destroy
  has_many :comments, as: :commentable
  has_many :course_locations, through: :user_course_location
  has_many :user_course_locations
end
