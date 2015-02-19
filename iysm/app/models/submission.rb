class Submission < ActiveRecord::Base
  belongs_to :user
  has_many :submissions, dependent: :destroy
end
