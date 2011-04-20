Допустим /^у пользователь "([^\"]*)" имеет роль "([^\"]*)"$/ do |user_email, role|
  user = User.find_by_email(user_email)
  assert user.has_role?(role)
end

Допустим /^я зашёл как "([^\"]*)"$/ do |user_email|
  Допустим %(я на главной странице)
  И %(я перехожу по ссылке "Войти")
  И %(я в поле "user_email" запишу "user@ya.ru")
  И %(я в поле "user_password" запишу "secret")
  И %(я нажму "Войти")
  И %(я увижу "Добро пожаловать на сервис мнений и споров.")
end



Допустим /^зарегистрирован пользователь "([^\"]*)"$/ do |user_email|
  default_password = "secret"
  user = User.create(:email => user_email, 
              :password => default_password, 
              :password_confirmation => default_password)

  puts user.errors.inspect unless user.errors.blank?
end

