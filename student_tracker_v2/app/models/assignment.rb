class Assignment < ActiveRecord::Base
  belongs_to :user
  has_one :submission
  has_many :links, through: :submission
  has_many :comments, as: :commentable
end
