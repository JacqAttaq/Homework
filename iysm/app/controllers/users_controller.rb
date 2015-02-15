class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create user_params
    redirect_to root_path
  end

  def edit
  end

  def show
  end

  def destroy
  end

  private 

  def user_params
    params.require(:user).permit(
      :name,
      :github_name,
      :admin_status)
  end
end
