class SessionsController < ApplicationController
  def new
    redirect_if_logged_in
  end

  def create #login
    if auth
      @user = User.find_by(email: auth[:info][:email])
      if @user
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        flash[:message] = "No User found with GitHub credentials. Please Sign Up using GitHub email."
        render :new
      end
    else
      @user = User.find_by(username: params[:user][:username])
      if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        render :new
      end
    end
  end

  def destroy
    session.delete :user_id
    redirect_to root_path
  end

  private

  def auth
    request.env["omniauth.auth"]
  end
end
