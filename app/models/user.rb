class User < ActiveRecord::Base
  include Authenticatable
  
  belongs_to :account
  
  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email
  
  validates :name, :presence => true
end
