class SessionsController < ApplicationController

  skip_before_action :authenticate_check, :only => [:new, :create]



  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      log_in(@user)
      redirect_to '/projects'
    else
      flash[:notice] = "Wrong Email/Password"
      redirect_to '/login'
    end
  end

  def destroy
    log_out_user
    redirect_to '/login'
  end

  # private
  # def user_params
  #   params.require(:user).permit(:email, :password)
  # end

end
