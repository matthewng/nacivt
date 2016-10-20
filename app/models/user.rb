require 'securerandom'

class User < ActiveRecord::Base

  before_create do
    self.uuid = SecureRandom.uuid if uuid.blank?
  end
  before_save { self.email = email.downcase }

  has_secure_password
  
  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }



end