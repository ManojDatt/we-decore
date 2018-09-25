class AdminUser < ApplicationRecord
  role_based_authorizable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  def to_s
  	email
  end
  before_save :auth_token_update
  has_many :break_fasts
  has_many :dinners
  has_many :lunchs

  def auth_token_update
    if self.auth_token.nil?
  	 self.auth_token = Uniqueness.generate(type: :human)
    end
  end
end
