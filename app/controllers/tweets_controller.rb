class TweetsController < ApplicationController
  def show
    @tweet = Tweet.find(params[:id])
  end

  def index
   @tweets = Tweet.all
  end

  def new
  end

  def create
    @tweet = Tweet.new(params.require(:tweet).permit(:title, :text))
    @tweet.save
    redirect_to @tweet
end
end
