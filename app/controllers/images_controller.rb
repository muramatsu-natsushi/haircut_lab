class ImagesController < ApplicationController
  before_action :set_image, only:[:show, :edit, :update, :destroy]
  
  def index
    @images = Image.all
  end
  
  
  def show
  end
  
  def new
    @video = Image.new
  end
  
  def create
    @video = Image.new(image_params)
    
    respond_to do |format|
      if @video.save
        format.html { redirect_to @video, notice: 'video was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def edit
  end
  
  def update
    respond_to do |format|
      if @video.update(article_params) && @video.video.recreate_versions!
        format.html { redirect_to @video, notice: 'video was successfully updated.'}
        format.json { head :no_content }
      else
        format.html { render aution: 'edit' }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destoroy
    @video.destroy
    respond_to do |format|
      format.html { redirect_to images_url }
      format.json { head :no_content }
    end
  end
  
  
  private

    def set_image
      @image = Image.find(params[:id])
    end

    def image_params
      params.require(:image).permit(:video)
    end
end