class ContactController < ApplicationController
  def create
    @message = Message.new(params[:message])
    
    if @message.valid?
      UserMailer.new_message(@message).deliver
      redirect_to(current_user, :notice => "Message was successfully sent")
    else
      flash.now.alert = "Please fill in all fields."
      render contact_user_path
    end
  end
end
