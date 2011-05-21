class Content < ActiveRecord::Base

  validates_presence_of :body, :name

end
