class ApplicationController < ActionController::Base
  # Imports session helper methods
  include SessionsHelper

  # calls authenticate_check for the application.
  before_action :authenticate_check

  private

  # Checks if user is logged in - if not then redirect to login page
  def authenticate_check
    redirect_to login_path unless helpers.logged_in?
  end

end
