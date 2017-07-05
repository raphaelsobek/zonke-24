class ProposalsController < ApplicationController
    before_action :authenticate_user!
  def create
    @gig = Gig.find(params[:gig_id])
    @proposal = @gig.proposals.build(proposal_params)
    @proposal.user = current_user
    @proposal.save!
    # GigsMailer.new_gigs(@proposal).deliver_now 
    redirect_to @proposal.gig
    # GigsMailer.new_gigs(@proposal).deliver_now 
  end
  private
    def proposal_params
      params.require(:proposal).permit(:bid, :description)
    end
end