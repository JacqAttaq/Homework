class Comment < ActiveRecord::Base
  belongs_to :assignments
  belongs_to :submissions
  belongs_to :user
  belongs_to :commentable, polymorphic: :true
end
