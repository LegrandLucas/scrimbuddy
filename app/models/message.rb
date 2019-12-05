class Message < ApplicationRecord
  belongs_to :sender, class_name: "User"
  belongs_to :receiver, class_name: "User"
  validates :content, length: { minimum: 3, maximum: 1000 }
  after_create :broadcast_message

  def broadcast_message

    channel = self.receiver.id * self.sender.id

    ActionCable.server.broadcast("chat_room_#{channel}", {
      message_partial: ApplicationController.renderer.render(
          partial: "messages/message_received",
          locals: { message: self }
        ),
      current_user_id: self.sender.id
    })
  end
end
