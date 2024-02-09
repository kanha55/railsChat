class Message < ApplicationRecord
  after_create_commit do
    broadcast_append_to("room", target: "messages_room", partial: "messages/message", locals: {message: self})
  end
  belongs_to :room
  belongs_to :user
end
