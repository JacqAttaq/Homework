class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @user = User.all
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
      :admin_status)
  end

  def set_user
    @user = User.find(params[:id])
  end
end