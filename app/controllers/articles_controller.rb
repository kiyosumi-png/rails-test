class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_paprams)
    
    @article.save
    redirect_to action: :index
  end

  private
    def article_paprams
      params.require(:article).permit(:title, :body)
    end
end
