class Comment < ActiveRecord::Base

  include ActsAsCommentable::Comment

  belongs_to :commentable, :polymorphic => true

  default_scope :order => 'created_at DESC'

  scope :vote_true, :conditions => {:vote => true}
  scope :vote_false, :conditions => {:vote => false}

  validates_presence_of :comment
  validates_inclusion_of :vote, :in => [true, false]

  # NOTE: install the acts_as_votable plugin if you
  # want user to vote on the quality of comments.
  #acts_as_voteable

  # NOTE: Comments belong to a user
  belongs_to :user

  # Будет браться дефолтный аватар для пользователя или сам аватар пользователя
  # если имеется
  def user_avatar
    "avatar2.jpg"
  end

end
