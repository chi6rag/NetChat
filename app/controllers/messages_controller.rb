class MessagesController < ApplicationController
  def index
    @message = Message.new
    @messages = Message.all
  end

  def create
    @message = Message.new(message_params)
    @is_saved = @message.save
    redirect_to messages_path
  end

  private
    def message_params
      params.require(:message).permit(:author, :message)
    end
end