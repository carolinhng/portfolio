class MessageMailer < ApplicationMailer

  default from: "caroline.ng.pro@hotmail.com"

  def new_message(message)
    @message = message
    @content = message.message
    @sender_name = " #{message.first_name} #{message.last_name}"
    @sender_email = message.email
    @sender_phone = message.phone_number
    mail(to: "caroline.ng.pro@hotmail.com", subject: "Nouveau message du portfolio de #{message.first_name}")
  end

end
