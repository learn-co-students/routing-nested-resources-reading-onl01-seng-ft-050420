class AuthorsController < ApplicationController

  def show
    @author = Author.find(params[:id])
  end
  
  def index
    if params[:author_id]
      @posts = Author.find(params[:author_id]).posts
    else
      @posts = Post.all
    end
  end

end
