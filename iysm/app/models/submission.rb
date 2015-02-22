class Submission < ActiveRecord::Base
  belongs_to :user
  belongs_to :assignment
  has_many :links, dependent: :destroy


include Workflow
workflow do

  state :incomplete do
    event :complete, transition_to: :completed
  end

  state :complete do
  end
end
end
