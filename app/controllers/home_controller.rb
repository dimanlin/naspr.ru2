class HomeController < ApplicationController

  def index
    @comment = Post.last.comments.new
    @posts = Post.main_page
  end

end
