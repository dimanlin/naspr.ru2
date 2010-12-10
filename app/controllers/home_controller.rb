class HomeController < ApplicationController

  def show
    @posts = Post.main_page
  end

end
