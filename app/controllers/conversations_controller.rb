class ConversationsController < ApplicationController
  def index
    @users_with_conversation = current_user.friends
    @friend                  = @users_with_conversation.last
    @messages                = current_user.conversation_with(@friend.id)
  end

  def show
    @users_with_conversation = current_user.friends
    @friend                  = User.find(params[:id])
    @messages                = current_user.conversation_with(@friend.id)
    @channel                 = current_user.id * @friend.id
  end
end
