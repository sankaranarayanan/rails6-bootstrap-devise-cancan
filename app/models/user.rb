class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  attr_accessor :user_secret_code
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :secret_code
  enum role: { admin: 1, others: 0 }
  before_save :set_secret_code

  def role?(role)
  	return self.send(role)
  end

private
  def set_secret_code
    self.secret_code = SecretCode.where(code: user_secret_code).first if user_secret_code
  end
end
