class Presentation < ApplicationRecord
  has_many :votes

  before_save :add_uuid

  def average (presentations)
    @presentations = presentations
    @presentations.each do |preso|
    @vote_array = []
      preso.votes.each do |vote|
        @vote_array.push(vote.vote_value)
      end
    end
  end

  private
  def add_uuid
    self.uuid = SecureRandom.uuid
  end
end
