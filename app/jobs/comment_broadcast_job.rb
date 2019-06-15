class CommentBroadcastJob < ApplicationJob
  queue_as :default

  def perform(comment)
    ActionCable.server.broadcast "post_channel_#{comment.post_id}", comment: render_comment(comment)
    # ActionCable.server.broadcast(
    #     "post_channel",
    #     sent_by: current_user.username,
    #     body: comment.message
    # )
  end
  private
  def render_comment(comment)
    ApplicationController.renderer.render(partial: 'comments/comment', locals: {comment: comment})
  end

end
