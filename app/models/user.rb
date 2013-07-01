class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me

  validates :name, :email, :password, presence: true
  validates :name, length: {minimum: 5, message: "Too short"}
  validates :password, length: {minimum: 5, message: "Too short"}
  validates :password, confirmation: true
  validates :email, uniqueness: true, length: {minimum: 5, message: "Too short"}, format: { with: /\A[a-zA-Z]+@[a-zA-Z]+.(com|us|in|co.in)\z/, message: 'format is invalid'}
  has_many :answers  
end
