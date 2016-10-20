require 'securerandom'

class Tournament < ActiveRecord::Base

  before_create do
    self.uuid = SecureRandom.uuid if uuid.blank?
  end

end