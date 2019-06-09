class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def show
   @post = Post.find(params[:id])
   # @chapter = @post.chapters.build
    # @post.user = current_user
   # @comment = PostMessage.new post: @post
   # @comments = @post.comments.includes(:user)
  end
  def index
    @post = Post.all
  end
  def new
    @post = current_user.posts.build
  end
  def edit
    @post = Post.find(params[:id])
  end
  def create
    @post = current_user.posts.build(post_params)
      if @post.save
        flash[:success] = "Funfic #{@post.title} was created successfully"
        redirect_to @post
      else
        render 'new'
      end
  end
  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

private
  def post_params
    params.require(:post).permit(:title,:username, :description)
  end
end