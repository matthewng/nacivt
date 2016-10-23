require 'securerandom'

class Team < ActiveRecord::Base

  belongs_to :tournament
  belongs_to :club
  has_many :users

end