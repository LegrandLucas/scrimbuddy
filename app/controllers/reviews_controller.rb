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
end
