class SessionsController < ApplicationController
  def create
    auth = request.env['omniauth.auth']
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    flash[:success] = "Signed in!"
    redirect_to root_path
  end

  def failure
    redirect_to root_path :alert => 'Sorry, there was something wrong with your login attempt. Please try again.'
  end

  def destroy
    session[:user_id] = nil
    reset_session
    flash[:notice] = "You are now signed out!"
    redirect_to root_path
  end
end
