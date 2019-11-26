class ReviewsController < ApplicationController
  before_action :set_review, only: %i[edit update destroy]
  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review       = Review.new(review_params)
    @review.scrim = @scrim
    @review.user  = current_user
    authorize @review
    @review.save
  end

  def edit
    authorize @review
  end

  def update
    @scrim = @review.scrim
    authorize @review
    if @review.update(review_params)
      redirect_to scrim_path(@scrim)
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:punctuality_rate, :professionalism_rate, :fair_play_rate)
  end
end
