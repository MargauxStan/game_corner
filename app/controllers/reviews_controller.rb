class ReviewsController < ApplicationController

  def new
    @game = Game.find(params[:game_id])
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.game_id = params[:game_id]
    @review.user = current_user

    authorize @review
    if @review.save
      redirect_to game_path(@review.game)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
