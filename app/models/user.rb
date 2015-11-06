require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  has_one :preference

  def initialize(parameters)
    @first_name = parameters[:first_name]
    @last_name = parameters[:last_name]
    @email = parameters[:email]
    @password = parameters[:password]
    puts @password
  end

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates_format_of :email, :with => /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :password_hash, presence: true

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(entered_email, entered_password)
    user = User.find_by(email: entered_email)
    if user && user.password == entered_password
      return user
    else
      return nil
    end
  end
end
