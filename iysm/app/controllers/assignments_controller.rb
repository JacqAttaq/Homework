class AssignmentsController < ApplicationController
  def index
    @user = User.find params[:user_id]
  end

  def new
  end

  def create
  end

  def edit
  end

  def show
  end

  def destroy
  end
end
