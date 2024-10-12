class VideosController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def index
    @videos = Video.all
  end

  def new
    @video = Video.new
  end

  def create
    @video = current_user.videos.build(video_params)
    if @video.save
      redirect_to videos_path, notice: 'Video was successfully created.'
    else
      render :new
    end
  end
  def after_sign_out_path_for(resource_or_scope)
    videos_path 
  end

  private

  def video_params
    params.require(:video).permit(:title, :url)
  end
end
