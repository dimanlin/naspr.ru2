require "populator"

Post.populate(20) do |p|
  p.subject = Faker::Lorem.words(rand(10) + 1)
  p.body = Faker::Lorem.paragraph
end
