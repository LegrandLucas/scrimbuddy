class ReviewsController < ApplicationController
  def new
    @review = Review.new
    authorize @review
  end

  def create
  end

  def edit
    authorize @review
  end

  def update
  end

  def destroy
  end

  private

  def review_params
    params.require(:review).permit(:punctuality_rate, :professionalism_rate, :fair_play_rate)
  end
end
