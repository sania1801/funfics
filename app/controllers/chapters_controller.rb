class ChaptersController < ApplicationController
  before_action :find_post, only:[:destroy,:create,:update, :new]
  before_action :find_chapter, only:[:destroy,:update]

  def new
    @chapter = Chapter.new
  end
  def create
    @chapter = @post.chapters.create(chapter_params)
    if @chapter.save
      redirect_to @post
    else
      render 'new'
    end
  end
  def destroy
    @chapter = @post.chapters.find(params[:id])
    @chapter.destroy
    redirect_to post_path(@post)
  end
  def edit
    @post= Post.find(params[:post_id])
    @chapter = @post.chapters.find(params[:id])
  end
  def update
    @chapter = @post.chapters.find(params[:id])
    @chapter.update_attributes(chapter_params)
    if @chapter.save
      redirect_to @post
    else
      render 'edit'
    end
  end
  private
  def find_post
    @post = Post.find(params[:post_id])
  end
  def find_chapter
    @chapter = @post.chapters.find(params[:id])
  end
  def chapter_params
    params.require(:chapter).permit(:body)
  end
end
