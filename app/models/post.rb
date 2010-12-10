class Post < ActiveRecord::Base

  scope :main_page, :limit => 10
  acts_as_commentable

end
