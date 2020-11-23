class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
      if @game.save
        redirect_to game_path(@game)
      else
        render :new
      end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to root_path
  end

  private

  def game_params
    params.require(:game).permit(:name, :genre, :platform, :description, :price, :url_trailer)
  end
end
