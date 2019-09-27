class NoticeMailer < ApplicationMailer

  default from: 'diveintopost@example.com'

  def sendmail_owner(team)
    @team = team
    mail to: User.find(@team.owner_id).email , subject: 'リーダー権限を移譲されました'
  end

  def delete_agenda(agenda,destroyer)
    @agenda = agenda
    @destroyer = destroyer
    sending = []
    Team.find(@agenda.team_id).assign_users.each do |user|
      sending << user.email
    end
    mail to: sending , subject: "アジェンダ#{@agenda.title}は削除されました"
  end
end
