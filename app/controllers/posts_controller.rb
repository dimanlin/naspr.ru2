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

  def create_comment
    @comment = Comment.create(params[:comment])
    if @comment.save
      redirect_to :back
    else
      @post = Post.find(params[:id])
      @comments = @post.comments.recent
      render :action => :show
    end
  end

end
