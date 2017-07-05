# Preview all emails at http://localhost:3000/rails/mailers/gigs_mailer
class GigsMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/gigs_mailer/new_gigs
  def new_gigs
  	proposal = Proposal.last
    GigsMailer.new_gigs(proposal)
  end

end
