class User < ActiveRecord::Base
  validates :email, presence: true 
  has_many :comments
  #Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  has_many :orders
end
