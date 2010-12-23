class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments.recent.order.find(:all, :order => "created_at")
    @comment = @post.comments.new
  end

  def create
    
  end


end
