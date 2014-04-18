class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def buddy_added_email(buddy, user)
    @buddy = buddy
    @user = user
    @url = 'http://example.com/login'
    mail(to: @buddy.email, subject: 'Welcome to My Awesome Site')
  end
end
