class Account::GamesController < ApplicationController
  def index
    @games = policy_scope(Game).where(user: current_user)
    
  end

  def edit
    @game = Game.find(params[:id])
    authorize @game
  end

  def update
    @game = Game.find(params[:id])
    @game.update(game_params)
    authorize @game
    if @game.save
      redirect_to account_games_path
    else 
      render :edit
    end
  end

  def destroy
    @game = Game.find(params[:id])
    authorize @game
    @game.destroy
    redirect_to account_games_path
  end

  private
  def game_params
    params.require(:game).permit(:name, :category, :genre, :platform, :description, :price, :url_trailer, :photo)
  end
end
