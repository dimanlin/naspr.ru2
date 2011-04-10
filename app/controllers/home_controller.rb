class HomeController < ApplicationController

  def index
    @posts = Post.main_page
  end

end
