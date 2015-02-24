class AssignmentsController < ApplicationController
  before_action :set_assignment, only: [:show, :edit, :update, :destroy]



  def index
    @assignments = Assignment.all
  end

  def new
    @assignment = Assignment.new
  end

  def create
    @assignment = Assignment.create assignment_params
    redirect_to assignments_path
  end

  def edit
  end

  def show
  end

  def destroy
    @assignment.destroy
    redirect_to assignments_path
  end

  private

  def assignment_params
    params.require(:assignment).permit(
      :name,
      :requirements,
      )
  end

  def set_assignment
    @assignment = Assignment.find params[:id]
  end  


end









