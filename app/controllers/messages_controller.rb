class MessagesController < ApplicationController

  def index
    @messages = current_user.conversation_with(params[:user_id])
    @message  = Message.new
    @friend   = User.find(params[:user_id])
  end

  def show
    @message = Message.find(params[:id])
  end

  def create
    @friend           = User.find(params[:user_id])
    @message          = Message.new(message_params)
    @message.sender   = current_user
    @message.receiver = @friend
    # @messages         = current_user.conversation_with(params[:user_id])
    if @message.save
      respond_to do |format|
        format.html { redirect_to user_messages_path(@friend) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render :index }
        format.js
      end
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to message_path(@message)
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
