class SessionsController < ApplicationController
 def new
 		flash[:danger] = 'Invalid email/password combination' # Not quite right!
  end

  def create
  	flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
     user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
    	flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
      log_in user
      redirect_to users_path
    else
      flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
  	flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
  end
end
