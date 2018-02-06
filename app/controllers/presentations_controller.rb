class PresentationsController < ApplicationController
  belongs_to :teacher
  has_many :votes
end
