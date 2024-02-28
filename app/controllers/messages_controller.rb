class MessagesController < ApplicationController

  def index

  end

  def create
    @message = Message.new(message_params)
    raise
    if @message.save!
      redirect_to root_path(anchor: "contact"), notice: "Votre message a bien été envoyé"
      raise
    else
      render "pages/home", status: :unprocessable_entity, notice: "Veuillez remplir tous les champs sauf le téléphone"
    end
  end

  private

  def message_params
    params.require(:message).permit(:last_name, :first_name, :phone_number, :email, :message)

  end
end
