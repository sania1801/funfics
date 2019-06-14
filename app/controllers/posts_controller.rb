class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  def show
  end
  def index
    if params[:tag]
    @post = Post.paginate(page: params[:page]).tagged_with(params[:tag])
    else
      @post = Post.paginate(page: params[:page])
    end
  end
  def new
    @post = current_user.posts.build
    @genre = Genre.all.map{|g|[g.name,g.id]}
  end
  def edit
    @genre = Genre.all.map{|g|[g.name,g.id]}
  end
  def create
    @post = current_user.posts.build(post_params)
    @post.genre_id = params[:genre_id]
      if @post.save
        # flash[:success] = "Funfic #{@post.title} was created successfully"
        redirect_to @post
      else
        render 'new'
      end
  end
  def update
    @post.genre_id = params[:genre_id]
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

private
  def find_post
    @post = Post.eager_load(:comments,:user,:chapters,:genre).find(params[:id])
  end
  def post_params
    params.require(:post).permit(:title,:username, :description, :genre_id, :tag_list)
  end
end