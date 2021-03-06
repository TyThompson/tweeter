class TweetsController < ApplicationController
  def show
    @tweet = Tweet.find(params[:id])
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def index
   @tweets = Tweet.all
  end

  def new
  end

  def create
  @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to @tweet
    else
      render 'new'
    end
  end

  def update
    @tweet = Tweet.find(params[:id])

    if @tweet.update(tweet_params)
      redirect_to @tweet
    else
      render 'edit'
    end
  end

  def destroy
  @tweet = Tweet.find(params[:id])
  @tweet.destroy

  redirect_to tweets_path
  end

  private

  def tweet_params
    params.require(:tweet).permit(:title,:text)
  end
end
