module Authenticatable
  extend ActiveSupport::Concern
  
  included do
    # Include default devise modules. Others available are:
    # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable
           
    attr_accessible :password, :password_confirmation, :remember_me
  end
end