class UsersController < ApplicationController
  
  # Skips authentication check for new and create since you're not logged in when viewing these pages.
  skip_before_action :authenticate_check, :only => [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      redirect_to login_path
    else
      email_match = User.all.find {|user| user.email == user_params[:email]}
      if email_match
        flash[:notice] = "Email already exists"
      else
        flash[:notice] = "Please fill in all fields"
      end
      render :new
    end
  end

  def show
    @user = User.find(session[:user_id])
    @projects = @user.projects
    @tasks = @user.tasks
  end

  private

  def user_params
    params.require(:user).permit(:name,:email,:password)
  end

end
