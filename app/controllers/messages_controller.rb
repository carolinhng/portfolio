class MessagesController < ApplicationController

  def index

  end

  def create
    @message = Message.new(message_params)
    if @message.save
      MessageMailer.with(message: @message).new_message.deliver_now
      redirect_to root_path(anchor: "contact"), notice: "Votre message a bien été envoyé"
    else
      flash[:alert] = "Veuillez remplir les champs obligatoires"
      redirect_to root_path(anchor: "contact")
    end
  end

  private

  def message_params
    params.require(:message).permit(:last_name, :first_name, :phone_number, :email, :message)
  end
end
