class ApplicationController < ActionController::Base

  rescue_from 'Acl9::AccessDenied', :with => :access_denied
  rescue_from 'ActiveRecord::RecordNotFound', :with => :render_404

  protect_from_forgery

  def resource 
    nil
  end

  def access_denied
    if current_user
      render :template => 'home/access_denied'
    else
      flash[:notice] = t("rescue_from.acl9")
      redirect_to new_user_session_url
    end
  end

  def render_404
    render :template => "error_pages/404.html", :status => "404 Not Found", :layout => false
  end

end
