class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments.recent
    @comment = @post.comments.new
  end

  def create
    
  end


end
