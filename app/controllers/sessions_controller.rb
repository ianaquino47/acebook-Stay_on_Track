class SessionsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      p session[:user_id] = user.id
      flash[:success] = "Successfully Logged in"
      redirect_to users_url
    else
      flash[:warning] = "Invalid"
      redirect_to '/users/new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'Successfully Logged out'
    redirect_to '/users/new'
  end
end
