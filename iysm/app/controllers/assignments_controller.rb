class AssignmentsController < ApplicationController
  before_action :set_assignment, only: [:show, :edit, :update, :destroy]
  before_action :set_user


  def index
    @assignments = Assignment.all
  end

  def new
    @assignment = @user.assignments.new
  end

  def create
    @assignment = @user.assignments.create assignment_params
    redirect_to user_path(@user)
  end

  def edit
  end

  def show
  end

  def destroy
    @assignment.destroy
    redirect_to user_assignments_path(@user)
  end

  private
  def assignment_params
    params.require(:assignment).permit(
      :name,
      :requirements)
  end

  def set_assignment
    @assignment = Assignment.find params[:id]
  end  

  def set_user
    @user = User.find params[:user_id]
  end
end
