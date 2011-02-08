class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:comment][:commentable_id])
    @comment = @post.comments.create(params[:comment])
    if @comment.save
      redirect_to @post
    else
      @comments = @post.comments.recent
      @true_comments = @post.comments.vote_true
      @false_comments = @post.comments.vote_false
      render :file => "/posts/show.haml"
    end
  end

end
