class AssignmentsController < ApplicationController
  before_action :set_assignment, only: [
    :create_comment, 
    :show, 
    :edit, 
    :update,
    :destroy
    ]



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
    @comment = Comment.new
    @comments = @assignment.comments
  end

  def destroy
    @assignment.destroy
    redirect_to assignments_path
  end

  def create_comment
    @comment = @assignment.comments.create comment_params
    redirect_to assignment_path(@assignment)
  end

  private

  def assignment_params
    params.require(:assignment).permit(
      :name,
      :requirements,
      )
  end
  
  def comment_params
    params.require(:comment).permit(
      :content,
      )
  end

  def set_assignment
    @assignment = Assignment.find params[:id]
  end  


end









