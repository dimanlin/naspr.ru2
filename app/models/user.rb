class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  acts_as_authorization_subject  :association_name => :roles

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  has_many :posts

  after_save :set_role

  def set_role
    self.has_role!("user")
  end

  def avatar?
    false
  end

  # Будет браться дефолтный аватар для пользователя или сам аватар пользователя
  # если имеется
  def user_avatar
    "avatar2.jpg"
  end

end
