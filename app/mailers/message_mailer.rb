class MessageMailer < ApplicationMailer

  default from: "caroline.ng.pro@hotmail.com"


  # rajouter paramètre message si envoi après création du message
  def new_message
    @message = params[:message]
    mail(to: "caroline.ng.pro@hotmail.com", subject: "Nouveau message du portfolio de #{@message.first_name}")
  end

end
