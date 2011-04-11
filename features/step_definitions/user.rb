Допустим /^зарегистрирован пользователь "([^\"]*)"$/ do |user_email|
  default_password = "secret"
  user = User.create(:email => user_email, 
              :password => default_password, 
              :password_confirmation => default_password)

  puts user.errors.inspect unless user.errors.blank?
end

