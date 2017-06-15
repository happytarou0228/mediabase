class Kanri::ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :update, :destroy]
  layout 'kanri'
  def index
    @articles = Article.all
  end
  
  def new
    @article = Article.new
  end
  
  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to kanri_articles_path, flash: { success: "更新しました" }
    else
      flash.now[:danger] = "作成できませんでした"
      render :new
    end
  end
  
  def edit
  end
  
  def update
    if @article.update(article_params)
      redirect_to kanri_articles_path, flash: { success: "更新しました" }
    else
      flash.now[:danger] = "更新できませんでした"
      render :new
    end
  end
  
  def destroy
    @article.destroy
    redirect_to kanri_articles_path, flash: { warning: "削除しました" }
  end
  
  private
  def set_article
    @article = Article.find(params[:id])
  end
  
  def article_params
    params.require(:article).permit(:created_at, :updated_at, :title, :body, :image)
  end
end
