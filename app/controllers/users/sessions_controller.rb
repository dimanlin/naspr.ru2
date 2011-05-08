class Users::SessionsController < Devise::SessionsController

  respond_to :js

  layout false

  def new                                                                                                        
    resource = build_resource
    clean_up_passwords(resource)
    respond_with resource, :status => "ok"
  end


  def create
    resource = warden.authenticate!(:scope => resource_name, :recall => "#{controller_path}#new")
#    set_flash_message(:notice, :signed_in) if is_navigational_format?
#    sign_in(resource_name, resource)
    respond_with resource
  end

  protected

  def stub_options(resource)
    array = resource_class.authentication_keys.dup
    array << :password if resource.respond_to?(:password)
    { :methods => array, :only => [:password] }
  end

end
