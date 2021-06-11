class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)

    if @review.save!
      redirect_to account_path
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:booking_id, :comment, :rating)
  end
end
