class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate
      log_in(@user)
      redirect_to '/projects'
    else
      flash[:notice] = "Wrong Username/Password"
      redirect_to '/login'
    end
  end

  def destroy
    log_out_user
    redirect_to '/login'
  end

  # private
  # def user_params
  #   params.require(:user).permit(:name)
  # end

end
