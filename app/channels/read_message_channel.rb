class ReadMessageChannel < ApplicationCable::Channel
  def subscribed
    stream_from "my_messages:#{current_user.id}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
