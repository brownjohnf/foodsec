class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  has_and_belongs_to_many :roles
  accepts_nested_attributes_for :roles, :allow_destroy => true

  after_create :add_default_roles

  def role?(role)
    return !!self.roles.find_by_name(role.to_s.camelize)
  end

  private

  def add_default_roles
    self.roles << Role.find_or_create_by_name('User')
  end

end
