require "populator"
require "faker"

Post.populate(120) do |p|
  p.subject = Faker::Lorem.words(10).join(" ")
  p.body = Faker::Lorem.paragraph
  p.created_at = (rand(9) + 1).day.ago
end
