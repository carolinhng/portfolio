class MessagesController < ApplicationController

  def index

  end

  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to root_path(anchor: "contact"), notice: "Votre message a bien été envoyé"
    else
      redirect_to root_path, status: :unprocessable_entity, notice: "Veuillez remplir les champs obligatoires"
    end
  end

  private

  def message_params
    params.require(:message).permit(:last_name, :first_name, :phone_number, :email, :message)
  end
end
