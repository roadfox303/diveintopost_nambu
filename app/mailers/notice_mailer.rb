class NoticeMailer < ApplicationMailer

  default from: 'diveintopost@example.com'

  def sendmail_owner(team)
    @team = team
    mail to: User.find(@team.owner_id).email , subject: 'リーダー権限を移譲されました'
  end
end
