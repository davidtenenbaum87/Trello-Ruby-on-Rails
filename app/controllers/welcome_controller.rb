class WelcomeController < ApplicationController

   # Skips authentication check for index since you're not logged in when viewing welcome page. 
  skip_before_action :authenticate_check, :only => [:index]

  # Welcome Page
  def index
    
  end
  
end
