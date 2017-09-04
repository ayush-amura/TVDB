class WelcomeController < ApplicationController
  before_action :authenticate_user!
  before_action :set_video, only: [:show, :edit, :update, :destroy]
 
  
  def index
  end
		
	def movie_index
		@movies=Video::Movie.all
  	render 'movie'
	end

	def tvshow_index
	  @tvshows=Video::TvShow.all
  	render 'tvshow'
	end

	def movie_cast
		cast=Video::Movie.new
		cast=cast.actors
	end
		

	def tvshow_cast
		cast=Video::Tvshow.new
		cast=cast.actors
	end

	def show
	end

	def new
	end

	def edit
	end

	def delete
	end

	def set_cast
      @video = Video.find(params[:id])
      @actor = Actor.find(params[:id])

    end

    # Never trust parameters from the scary internet, only allow the white list through.
  def cast_params
      params.require(:video).permit(:title, :language, :genre, :year_release, :type, :rating)
   	  params.require(:actor).permit(:name, :age, :rating)
  end

end
