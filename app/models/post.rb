class Post < ActiveRecord::Base

  order :created_at
  belongs_to :user
  attr_accessor :rule

  scope :main_page, :limit => 10, :order => "created_at DESC"
  acts_as_commentable

  validates_presence_of :subject, :body, :user_id
  validate :valid_rule

  def valid_rule
    if self.rule != "1"
      self.errors.add(:rule, "Вы должны быть согласны с правилами публикации")
    end
  end

end
