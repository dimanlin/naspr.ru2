require "populator"
require "faker"

Post.populate(20) do |p|
  p.subject = Faker::Lorem.words(10).join(" ")
  p.body = Faker::Lorem.paragraph
end
