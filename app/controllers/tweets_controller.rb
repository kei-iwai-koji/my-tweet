class TweetsController < ApplicationController

  def index
    @tweets = Tweet.includes(:user).order("created_at DESC")
  end

  def new
    @tweet = Tweet.new
  end

  def create
    tweet = Tweet.create(tweet_params)
    redirect_to root_path
  end

  def show
    @tweet = Tweet.find(params[:id])
    @comment = @tweet.comments.new
    @comments = Comment.where(tweet_id: @tweet.id)
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.find(params[:id])
    tweet.update(tweet_params) if tweet.user == current_user
    redirect_to tweet_path(params[:id])
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy if tweet.user == current_user
    redirect_to root_path
  end

  private
  def tweet_params
    params.require(:tweet).permit(:text, :image).merge(user_id: current_user.id)
  end

end
