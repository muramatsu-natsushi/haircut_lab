class ArticlesController < ApplicationController
  def index
  end

  def new
    @article = Article.new
    @article.contents.build
    @image = Image.new
  end

  def show
  end

  def create
     @article = current_user.articles.create!(title: article_params[:title])
     @content = @article.contents.create!(content: article_params[:content])
     byebug
     @content.images.create!(video: article_params[:video])

     p @article

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'video was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'show' }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
  end

  def destoroy
  end

  private
  def article_params
     params.require(:article).permit(:title, :content, :video)
  end

end
