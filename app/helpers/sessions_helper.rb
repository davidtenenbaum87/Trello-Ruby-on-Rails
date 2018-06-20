module SessionsHelper

  def log_in(user)
    session[:user_id] = user.id
  end

  # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

  def log_out_user
    session.delete(:user_id)
  end

  # def logged_in_user_string
  #   session[:user_id]
  # end

  # def logged_in_user_id_integer
  #   logged_in_user_string.to_i
  # end

  # def logged_in_user
  #   User.find_by(id: logged_in_user_id_integer)
  # end

  # def logged_in_as?(user_id)
  #   user_id == logged_in_user_id_integer
  # end

end