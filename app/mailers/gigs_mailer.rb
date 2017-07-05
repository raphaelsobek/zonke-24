class GigsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.gigs_mailer.new_gigs.subject
  #
  def new_gigs (proposal)
    @proposal = proposal
    @gig = @proposal.gig

    mail to: @gig.user.email, subject: "New proposal for #{@gig.name}"
  end
end
