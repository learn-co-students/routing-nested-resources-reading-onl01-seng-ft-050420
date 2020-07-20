class PostsController < ApplicationController

  #if there is an author_id rails knows to implicitly render the author_posts index
  #rather that the posts index 
  def index
    if params[:author_id]
      @posts = Author.find(params[:author_id]).posts 
    else 
      @posts = Post.all 
    end 
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to post_path(@post)
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:id])
  end

private

  def post_params
    params.require(:post).permit(:title, :desription, :post_status, :author_id)
  end
end
