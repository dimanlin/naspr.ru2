=begin
Devise::SessionsController.class_eval do
  # POST /resource/sign_in
  @@aa = "OK"
  def a
    false
  end
  def create
    resource = warden.authenticate!(:scope => resource_name, :recall => "#{controller_path}#new")
    set_flash_message(:notice, :signed_in) if is_navigational_format?
    sign_in(resource_name, resource)
    puts "11111111111111111111111111111111111"
#    respond_with resource, :location => redirect_location(resource_name, resource)
  end
end
=end
