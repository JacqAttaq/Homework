class SubmissionsController < ApplicationController
  before_action :set_user
  before_action :set_assignment

  def index
    @links = Link.new
    @sumbissions = Submission.all
  end

  def new 
    @submission = @assignment.submissions.new
  end

  def create
    
    @assignment = Assignment.find params[:assignment_id]
    @submission = @user.assignment.submissions.create sub_params
    if @submission.save
      flash[:notice] = 'Submission Success!'
      redirect_to user_assignment_submissions_path(user,assignment)
    else
      flash[:error] = 'Sorry, Submission not Saved.'
      render :new 
    end
  end

  def edit
  end

  def show
  end

  def destroy
  end

  def incomplete_submission
  end

  def complete_submission
  end
  private
  
  def sub_params
    params.require(:submission).permit(
      :name, 
      user_id: [],
      assignment_id: []
      )
  end

  def set_user
    @user = User.find params[:user_id]
  end

  def set_assignment
    @assignment = Assignment.find params[:assignment_id] 
  end
end
