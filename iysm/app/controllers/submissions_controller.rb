class SubmissionsController < ApplicationController
  before_action set_user
  before_action set_assignment


  def index
    @sumbissions = Submissions.all
  end

  def new
    @user = User.find params[:user_id]
    @assignment = Assignment.find params[:assignment_id]
    @submission = @user.assignment.submissions.new
  end

  def create
    @user = User.find params[:user_id]
    @assignment = Assignment.find params[:assignment_id]
    @submission = @user.assignment.submissions.create sub_params
    if @submission.save
      flash[:notice] = 'Submission Success!'
      redirect_to user_assignment_submissions_path(user,assignment)
    else
      flash[:error] = 'Sorry, Submission not Saved.'
      render :new 
  end

  def edit
  end

  def show
  end

  def destroy
  end
  private
  def sub_params
    params.require(:submission).permit(
      :name, 
      )
end
