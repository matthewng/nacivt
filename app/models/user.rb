require 'securerandom'

class User < ActiveRecord::Base

  before_save { self.email = email.downcase }

  has_secure_password
  
  validates :first_name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }

  belongs_to :club
  has_and_belongs_to_many :teams

  def name
    [first_name, last_name].compact.join(" ")
  end

end