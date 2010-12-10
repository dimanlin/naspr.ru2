class User < ActiveRecord::Base
  acts_as_authentic do |c|
    c.login_field = :email # for available options see documentation in: Authlogic::ActsAsAuthentic
  end # block optional 
end
