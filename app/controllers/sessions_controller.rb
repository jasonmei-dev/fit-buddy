class SessionsController < ApplicationController
  def new
    redirect_if_logged_in
  end

  def create #login
    if auth_hash #login via OAuth
      @user = User.find_or_create_by_omniauth(auth_hash)
      session[:user_id] = @user.id
      flash[:success] = "Login successful!"
      redirect_to root_path
    else #normal login
      @user = User.find_by(username: params[:user][:username])
      if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        flash[:success] = "Login successful!"
        redirect_to root_path
      else
        flash[:danger] = "Credentials were invalid. Please try again or Sign Up."
        render :new
      end
    end
  end

  def destroy
    session.delete :user_id
    redirect_to root_path
  end

  protected
    def auth_hash
      request.env["omniauth.auth"]
    end
end
