require 'securerandom'

class Tournament < ActiveRecord::Base

  belongs_to :club
  has_many :clubs


end