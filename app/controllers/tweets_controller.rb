class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all(order: 'id DESC')
  end

  def create
    current_user = session[:current_user]
    Tweet.create username: current_user, status: params["status"]
    redirect_to "/tweets"
  end
end
