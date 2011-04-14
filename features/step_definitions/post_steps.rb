Допустим /^у пользователя "([^\"]*)" есть следующие мнения:$/ do |user_email, table|
  user = User.find_by_email(user_email)
  table.hashes.each {|hash|
    user.posts.create(:subject => hash[:subject], :body => hash[:body])
  }
  
end
