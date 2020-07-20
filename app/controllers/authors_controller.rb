class AuthorsController < ApplicationController

  def show
    @author = Author.find(params[:id])
  end 

  # WET code and violation of Seperation of Concerns => Move to Post Controller 
  # def posts_index 
  #   @author = Author.find(params[:id])
  #   @post = @author.posts 
  #   render template: 'posts/index'
  # end 

  # def post
  #   @author = Author.find(params[:id])

  #   @post = Post.find(params[:id])
  #   render template: 'posts/show'
  # end 

end
