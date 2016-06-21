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
  @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end
end
