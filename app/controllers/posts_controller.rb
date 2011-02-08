class PostsController < ApplicationController

  def index
    @posts = Post.all.paginate(:page => params[:page], :per_page => 10, :order => "created_at DESC")
  end

  def show
    @post = Post.find(params[:id])
    @true_comments = @post.comments.vote_true
    @false_comments = @post.comments.vote_false
    @comment = @post.comments.new
  end

  def create
    
  end


end
