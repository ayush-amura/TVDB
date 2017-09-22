
class ActorsController < ApplicationController
  before_action :set_actor, only: [:show, :edit, :update, :destroy]
   
  def index 
    @actors = Actor.all
    respond_to do |format|
      format.json { render json: @actors }
      format.html { render 'index' }
    end 
  end

  def show
    @actor = Actor.where(id: params[:id]).first
    respond_to do |format|
      format.json { render json: @actor }
      format.html { render 'show' }
    end
  end
  

  def new
    @actor = Actor.new
  end

  def edit
  end

  def create
    @actor = Actor.new(actor_params)

    respond_to do |format|
      if @actor.save
        format.html { redirect_to @actor, notice: 'Actor was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # def update
  #   respond_to do |format|
  #     if @actor.update(actor_params)
  #       format.html { redirect_to @actor, notice: 'Actor was successfully updated.' }
  #     else
  #       format.html { render :edit }
  #       end
  #   end
  # end

  def destroy
    @actor.destroy
    respond_to do |format|
      format.html { redirect_to actors_url, notice: 'Actor was successfully destroyed.' }
      end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actor
      @actor = Actor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actor_params
      params.require(:actor).permit(:name, :age, :rating)
    end
end
