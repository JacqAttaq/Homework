class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :submissions, dependent: :destroy
  has_many :assignments, dependent: :destroy
  has_many :comments, as: :commentable
  has_many :course_locations, through: :user_course_location
  has_many :user_course_locations
end
