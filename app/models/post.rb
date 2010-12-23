class Post < ActiveRecord::Base

  scope :main_page, :limit => 10, :order => "created_at DESC"
  acts_as_commentable

end
