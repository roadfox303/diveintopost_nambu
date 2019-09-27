require "rails_helper"

RSpec.describe NoticeMailer, type: :mailer do
  describe "sendmail_owner" do
    let(:mail) { NoticeMailer.sendmail_owner }

    it "renders the headers" do
      expect(mail.subject).to eq("Sendmail owner")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
