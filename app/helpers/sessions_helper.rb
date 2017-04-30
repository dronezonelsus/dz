module SessionsHelper
	# Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
    session[:first_name] = user.first_name
  end

   def log_out
    session.delete(:user_id)
  end
end
