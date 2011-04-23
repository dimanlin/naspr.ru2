class PostsController < ApplicationController

  access_control do
    actions :index, :show do
      allow all
    end

    actions :create, :new do 
      allow :user
    end
  end

  def index
    @posts = if params[:type]
      User.find_by_email(params[:type]).posts.paginate(:page => params[:page], :per_page => 10, :order => "created_at DESC")
    else
      Post.all.paginate(:page => params[:page], :per_page => 10, :order => "created_at DESC")
    end
  end

  def show
    @post = Post.find(params[:id])

    @true_comments = @post.comments.vote_true
    @num_true_comments = @post.comments.vote_true.size

    @false_comments = @post.comments.vote_false
    @num_false_comments = @post.comments.vote_false.size

    @comment = @post.comments.new(:vote => true)
  end

  def create
    @post = current_user.posts.new(params[:post])
    if @post.save
      flash[:notice] = t("notice.post_create") 
      redirect_to root_path
    else
      render :action => :new
    end
  end

  def new 
    @post = Post.new
  end


end
