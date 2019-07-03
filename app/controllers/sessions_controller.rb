class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    user = User.find_by(user_name: params[:user_name])
    session[:user_id] = user.id if user&.authenticate(params[:password])
    redirect_to :root
  end

  def destroy
    session.delete(:user_id)
    redirect_to :root
  end

end
