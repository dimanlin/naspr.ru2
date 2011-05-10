# encoding: utf-8
Допустим /^у пользователя "([^\"]*)" есть следующие мнения:$/ do |user_email, table|
  user = User.find_by_email(user_email)
  table.hashes.each {|hash|
    post = user.posts.create(:subject => hash[:subject], :body => hash[:body], :rule => "1")
    puts post.errors.inspect unless post.errors.empty?
  }
  
end
