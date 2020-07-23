class AuthorsController < ApplicationController
  
  def show
    @author = Author.find(params[:id])
  end

end

#If we want to get to the /authors page, we know the URL helpers are authors_path and authors_url.
#And if we want to get to a single author (/authors/:id), we can use author_path(id)
