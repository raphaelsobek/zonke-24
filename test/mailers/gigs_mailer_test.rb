require 'test_helper'

class GigsMailerTest < ActionMailer::TestCase
  test "new_gigs" do
    mail = GigsMailer.new_gigs
    assert_equal "New gigs", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
