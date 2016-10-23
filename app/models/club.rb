require 'securerandom'

class Club < ActiveRecord::Base

  belongs_to :user
  has_many :users
  has_many :teams

end