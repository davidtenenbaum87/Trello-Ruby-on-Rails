class UsersController < ApplicationController

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
