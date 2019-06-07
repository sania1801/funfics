class PostsController < ApplicationController
  # before_action :load_entities
  def show
   @post = Post.find(params[:id])
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
    # respond_with Post.create(post_params.merge(user_id: current_user.id))
    @post = current_user.posts.build(post_params)
    # @post.user = current_user
      if @post.save
        # flash[:success] = "Funfic #{@post.name} was created successfully"
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