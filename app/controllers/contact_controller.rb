class ContactController < ApplicationController
  require 'User'

  def new
    @message = Contact.new
  end

  def create
    new_message = params.require(:message).permit(:name, :email, :subject, :body)
    @message = Contact.new(new_message)
    
    if @message.valid?
      UserMailer.contact_buddy(@message).deliver
      redirect_to(current_user, :notice => "Message was successfully sent")
    else
     # flash.now.alert = "Please fill in all fields."
      #render contact_user_path(@buddy)
      redirect_to(current_user, :notice => "Message not sent")
    end
  end
end
