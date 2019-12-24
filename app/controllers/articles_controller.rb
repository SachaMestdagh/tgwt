class ArticlesController < ApplicationController
  before_action :set_article, only: [:index, :show, :edit, :update, :destroy]


  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.photo_list = params[:article][:article_photos]
    if @article.save
     redirect_to article_path(@article)
   else
    render :new
    end
  end

  def show
  end

  def update
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article.destroy
    redirect_to blog_path
  end

def set_article
    @article = Article.find(params[:id])
    authorize @article
  end

  def article_params
    params.require(:article).permit(:title, :summary, :content, :article_photos)
  end
end
