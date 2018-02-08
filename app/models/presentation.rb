class Presentation < ApplicationRecord
  has_many :votes

  before_save :add_uuid

  def average
    puts 'test'
  end

  private
  def add_uuid
    self.uuid = SecureRandom.uuid
  end
end
