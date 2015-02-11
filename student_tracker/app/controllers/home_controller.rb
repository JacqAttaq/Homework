class HomeController < ApplicationController
  skip_authorization_check
  def Index
    @resource =resource
  end
end
# resources and layout