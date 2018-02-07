class VotesController < ApplicationController

	def vote
    @presentation = Presentation.find(params[:id])
	end

	def api_index
		@votes = Vote.where({presentation_id: params[:id], created_at: (Time.now - 30.seconds)..Time.now})
		render json: @votes
	end

  def create
    v1 = Vote.new
    v1.presentation_id = params[:presentation_id]
    v1.vote_value = params[:vote_value]
    v1.save
    redirect_to "/presentations/#{params[:presentation_id]}/vote"
  end

end
