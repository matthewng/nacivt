require 'securerandom'

class Team < ActiveRecord::Base

  belongs_to :tournament
  belongs_to :club
  has_and_belongs_to_many :users

end