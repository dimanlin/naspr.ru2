class Users::PasswordsController < Devise::PasswordsController

  layout false

  respond_to :html, :js, :xml

#  def new
#    puts "111111111111111111111111111111"
#    build_resource({})
#    render_with_scope :new
#  end

   def create
    puts "222222222222222222222222222222"
    self.resource = resource_class.send_reset_password_instructions(params[resource_name])

    if resource.errors.empty?
      puts "4444444444444444444444444444444"
      set_flash_message(:notice, :send_instructions) if is_navigational_format?
      respond_with resource, :location => new_session_path(resource_name)
    else
      puts "333333333333333333333333333333333"
      puts resource.errors
      respond_with resource
#      respond_with_navigational(resource){ render_with_scope :new }
    end

   end


end
