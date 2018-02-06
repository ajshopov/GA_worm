class PresentationsController < ApplicationController
  has_one :teacher
  has_many :votes
end
