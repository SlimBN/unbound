class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :avatar, :country_id, :job_id, :slug, :state_id, :username

  extend FriendlyId
  friendly_id :username, use: :slugged

  has_many :articles
  has_many :journals

  belongs_to :country
  belongs_to :state

end
