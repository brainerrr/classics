class ReviewsController < ApplicationController
  def create
    @car =
    @review = review.new(review_params)
    @review.user = current_user
    if @review.save!
      redirect_to car_path(@car)
    else
      render :new
    end
  end
end
