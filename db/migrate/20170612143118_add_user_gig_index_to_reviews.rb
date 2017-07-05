class AddUserGigIndexToReviews < ActiveRecord::Migration[5.0]
  def change
  	add_reference :reviews, :gig, index: true
  	add_reference :reviews, :user, index: true
  end
end
