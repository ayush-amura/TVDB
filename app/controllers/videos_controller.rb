  
class VideosController < ApplicationController
  before_action  :set_video, only: [:show, :edit, :update, :destroy]
  
  def index
    @video = Video.all
    respond_to do |format|
      format.json { render json: @video }
      format.html { render 'index' }
    end 
  end
  
  
  def show
    @video = Video.where(id: params[:id]).first
    respond_to do |format|
      format.json { render json: @video }
      format.html { render 'show' }
    end
  end
 

  def new
    @video = Video.new
  end

  def edit
  end

  def create
    @video = Video.new(video_params)

    respond_to do |format|
      if @video.save
        # flash[:notice] = 'Video created'
        format.html { redirect_to video_path(@video) } 
      else
        format.html { render :new }      
      end
     end
  end

  def update
    respond_to do |format|
      if @video.update(video_params)
        format.html { redirect_to @video, notice: 'Video was successfully updated.' }
      else
        format.html { render :edit }       
      end
    end
  end

  def destroy
    @video.destroy
    respond_to do |format|
      format.html { redirect_to videos_url, notice: 'Video was successfully destroyed.' }
    end
  end

  private
    def set_video
      @video = Video.find(params[:id])
    end
    def video_params
      params.require(:video).permit(:title, :language, :genre, :year_release, :_type, :rating)
    end
end
