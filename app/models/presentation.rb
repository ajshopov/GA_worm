class Presentation < ApplicationRecord
  has_many :votes

  before_save :add_uuid

  private
  def add_uuid
    self.uuid = SecureRandom.uuid
  end
end
