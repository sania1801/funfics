class PostChannel < ApplicationCable::Channel
  def subscribed
    stream_from channel
  end
  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
  def receive(data)
    ActionCable.server.broadcast("post#{params[:post]}", data)
  end
  def speak(data)
    Comment.create! message: data['comment'], user_id: data['user'], post_id: data['post']
  end
  private
  def channel
    "post_channel_#{params[:id]}"
  end
end
