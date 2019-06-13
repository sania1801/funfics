class PostChannel < ApplicationCable::Channel
  def subscribed
    stream_from "post_channel"
    # post= Post.find params[:post]
    # stream_for post
  end
  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    ActionCable.server.broadcast 'post_channel', comment: data['comment']
  end
end
