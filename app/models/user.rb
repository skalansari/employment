class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  
  belongs_to :role
  has_many :jobs
  
  validates :name, :password, :role_id, presence: true
  
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  
end
