class ReviewsController < ApplicationController
	before_action :set_gig
    before_action :authenticate_user!
 def new
 @review = Review.new(gig: @gig)
 	
 end
 def create
 
 @review = current_user.reviews.build(review_params)
 @review.gig = @gig
 @review.save
 redirect_to @gig
 end
 def set_gig
  @gig = Gig.find(params[:gig_id])
 end	
 private
   def review_params
   	params.require(:review).permit(:comment, :rating)
   end
end

