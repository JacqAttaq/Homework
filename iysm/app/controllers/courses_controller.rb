class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.create course_params
    redirect_to courses_path
  end

  def edit
    @course = Course.find params[:id]
  end

  def update
    @course.update(course_params)
    redirect_to courses_path
  end

  def show
    
  end

  def destroy
    @course.destroy
    redirect_to courses_path
  end

  private

  def course_params
    params.require(:course).permit(
      :name,
      :description
      )
  end

  def set_course
    @course = Course.find(params[:id])
  end
  
end
