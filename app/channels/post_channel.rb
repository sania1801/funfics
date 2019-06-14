class PostChannel < ApplicationCable::Channel
  def subscribed
    stream_from "post_channel"
  end
  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    # binding.pry
    ActionCable.server.broadcast 'post_channel', comment: data['comment']
  end
end
