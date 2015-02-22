class Submission < ActiveRecord::Base
  belongs_to :user
  belongs_to :assignment


include Workflow
workflow do

  state :incomplete do
    event :complete, transition_to: :completed
  end

  state :complete 
end
end
