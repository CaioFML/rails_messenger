class ReadMessageJob < ApplicationJob
  queue_as :default

  def perform(user, message_ids = [])
    ActionCable.server.broadcast "my_messages>#{user.id}", messages: message_ids
  end
end
