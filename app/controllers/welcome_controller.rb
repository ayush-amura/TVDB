class WelcomeController < ApplicationController
   before_action :authenticate_user!
  # before_action :set_video, only: [:show, :edit, :update, :destroy]
 
  
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



	
end
