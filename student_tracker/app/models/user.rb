class User < ActiveRecord::Base
  has_many :submissions, dependent: :destroy
  has_many :assignments, dependent: :destroy
  has_many :comments, as: :commentable
  has_many :user_course_locations
  has_many :courses, through: :user_course_locations
end
