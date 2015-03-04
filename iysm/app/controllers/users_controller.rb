class UsersController < ApplicationController
  before_action :set_user, only: [:update_location, :show, :edit, :update, :destroy]
  before_action :authenticate_user!
 
  def index
    @user = User.all
  end

  def update_location
    @locations = locations.map{|l| [l.city, l.id]}.insert(0, "Select a location")
    

  end

  def update_course_location
  end



  def new
    @user = User.new
  end

  def create
    @user = User.create user_params
    redirect_to users_path
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user.update(user_params)
    redirect_to users_path
  end

  def show
    @location = Location.all
    @course = Course.all
    @assignments = @user.assignments
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private 

  def user_params
    params.require(:user).permit(
      :name,
      :github_name,
      :admin_status,
      location_course_id: [],
      user_id: []
      )
  end

  def set_user
    @user = User.find(params[:id])
  end
end
