class ApplicationController < ActionController::Base

  rescue_from 'Acl9::AccessDenied', :with => :access_denied

  protect_from_forgery

  def access_denied
    if current_user
      render :template => 'home/access_denied'
    else
      flash[:notice] = t("rescue_from.acl9")
      redirect_to new_user_session_url
    end
  end

end
