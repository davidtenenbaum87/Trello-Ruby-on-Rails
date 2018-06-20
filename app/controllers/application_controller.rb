class ApplicationController < ActionController::Base
  include SessionsHelper
  # include ProjectsHelper

  before_action :authenticate_check
  # before_action :project_access?

  private

  def authenticate_check
    redirect_to login_path unless helpers.logged_in?
  end  
  
end
