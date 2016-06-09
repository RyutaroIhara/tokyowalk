class ReviewsController < ApplicationController
	def create
		@review = Review.create(text: review_params[:text], walk_id: review_params[:walk_id], user_id: current_user.id)
		redirect_to "/walks/#{@review.walk.id}"
	end

	private
	def review_params
		params.permit(:text, :walk_id)
	end
end
