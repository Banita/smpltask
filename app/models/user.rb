class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :email, :firstname, :lastname
  attr_accessor :code
  attr_accessible :code
  has_one :secret_code
  validate :code
  after_create :create_user
  has_and_belongs_to_many :roles

  def create_user
    a=SecretCode.find(code)
    a.user_id=self.id
    a.save
   #p "code is #{code}"
  end

end
