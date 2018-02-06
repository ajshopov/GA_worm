class VotesController < ApplicationController

	def vote
	end

	def api_index
		@votes = Vote.all
		render json: @votes 
	end

end
