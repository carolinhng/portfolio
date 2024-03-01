class MessageMailer < ApplicationMailer

  default from: 'caroline.ng.pro@hotmail.com'

  # rajouter paramètre message si envoi après création du message
  def new_message(message)
    @message = message
    mail(to: 'caroline.ng.pro@hotmail.com', subject: "Nouveau message du portfolio")
  end

end
