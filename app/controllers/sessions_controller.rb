class SessionsController < ApplicationController
  def new
    @user = User.find_by(username: params[:user_name])

    if !!@user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to messages_path
    else
      message = "login errado"
      redirect_to login_path, notice: message
    end
  end
end
