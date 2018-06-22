class GoodbyeController < ApplicationController

  # Skips authentication check for goodbye page. 
  skip_before_action :authenticate_check, :only => [:index]

  def index

  end

end
