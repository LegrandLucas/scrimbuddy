class ReviewsController < ApplicationController
  def new
    @review = Review.new
    autorize @review
  end

  def create
  end

  def edit
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
