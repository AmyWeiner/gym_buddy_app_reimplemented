class UserMailer < ActionMailer::Base
  default from: "http://gym-buddy.herokuapp.com/"

  def buddy_added_email(buddy, user)
    @buddy = buddy
    @user = user
    @url = 'http://gym-buddy.herokuapp.com/'
    mail(to: @buddy.email, subject: 'You Have Been Buddied')
  end

  def contact_buddy(message)
    @message = message
    mail(to: @message.email, subject: @message.subject)
  end
end
