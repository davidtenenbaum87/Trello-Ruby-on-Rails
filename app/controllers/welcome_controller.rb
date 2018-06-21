class WelcomeController < ApplicationController
  skip_before_action :authenticate_check, :only => [:index]

  def index
  end
  
end
