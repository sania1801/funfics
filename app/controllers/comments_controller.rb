class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to post_path(@post)
      PostChannel.broadcast_to @post, @comment
    else
      # render 'comments/form'
    end
  end
  def show
    # @comment = @post.comments(comment_params)
    # @comments = @post.comments.pagenate(page: params[:page]||1,per_page: 20)
  end
  private

  def comment_params
    params.require(:comment).permit(:username, :message)
  end
  end