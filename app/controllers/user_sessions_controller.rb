class UserSessionsController < ApplicationController
  def new
  end

  def create
    username = params["username"]
    session[:current_user] = username

    redirect_to "/user_sessions/new"
  end
end
