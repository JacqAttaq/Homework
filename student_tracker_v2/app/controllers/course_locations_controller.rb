class CourseLocationsController < ApplicationController
  before_action :authenticate_user!

def index
  @course_locations = CourseLocation.all
end

private 
  def course_location_params
    params.require(:course_location).permit(
      :location_id,
      :course_id,
      :user_name,
      user_ids: []
    )
  end
end
