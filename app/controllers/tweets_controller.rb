class TweetsController < ApplicationController
  def new
  end

  def create
    @tweet = Tweet.new(params[:tweet])
    @tweet.save
    redirect_to @tweet
end
end
