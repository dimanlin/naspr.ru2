class HomeController < ApplicationController

  def index
    @comment = Post.last.comments.new(:vote => true) unless Post.all.blank?
    @posts = Post.main_page
    @last_post = @posts.first unless @posts.blank?
    @comments = @last_post.comments unless @last_post.blank?
  end

end
