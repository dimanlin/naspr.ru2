class CommentsController < ApplicationController

  before_filter "check_captcha", :only => :create

  def create
    @post = Post.find(params[:comment][:commentable_id])
    current_user ? additional_hash = {:user_id => current_user.id} : additional_hash = {}
    @comment = @post.comments.create(params[:comment].merge(additional_hash))
    if @comment.save
      redirect_to @post, :notice => t("notice.comment_create")
    else
      @comments = @post.comments.recent
      @true_comments = @post.comments.vote_true
      @false_comments = @post.comments.vote_false
      render :file => "/posts/show.haml"
    end
  end

  private

  def check_captcha
    unless current_user
      redirect_to new_user_session_url, :notice => t("notice.captcha") if verify_recaptcha == true
    end
  end

end
