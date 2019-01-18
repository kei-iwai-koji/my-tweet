class CommentsController < ApplicationController
  before_action :move_to_sign_in

  def create
    tweet = Tweet.find(params[:tweet_id])
    comment = tweet.comments.create(comment_params)
    redirect_to tweet_path(params[:tweet_id])
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id)
  end

  def move_to_sign_in
    redirect_to new_user_session_path unless user_signed_in?
  end
end
