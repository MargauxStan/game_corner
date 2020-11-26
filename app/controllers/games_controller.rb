class GamesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  
  def index
    if params[:query].present?
      @games = policy_scope(Game).search_by_name_and_platform(params[:query])
    else
      @games = policy_scope(Game).all
    end
  end
  
  def show
    @game = Game.find(params[:id])
    authorize @game
  end

  def new
    @game = Game.new
    authorize @game
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user

    authorize @game

      if @game.save
        redirect_to game_path(@game)
      else
        render :new
      end
  end

  private

  def game_params
    params.require(:game).permit(:name, :genre, :platform, :description, :price, :url_trailer, :photo)
  end
end
