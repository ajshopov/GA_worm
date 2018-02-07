class PresentationsController < ApplicationController

  def new
    redirect_to '/login' unless session[:teacher_id]
  end

  def create
    redirect_to '/login' unless session[:teacher_id]

    p1 = Presentation.new
    p1.teacher_id = session[:teacher_id]
    p1.description = params[:description]
    p1.metric = params[:metric]
    p1.date = params[:date]
    p1.start_time = params[:start_time]
    p1.end_time = params[:end_time]
    p1.save

    redirect_to '/'
  end

	def show
    @presentation = Presentation.find(params[:id])
	end

  def index
    redirect_to '/teachers/show'
  end

  def vote
  end

  def check
    presentation_id = params[:presentation_id]
    presentation = Presentation.find(presentation_id)
    if !presentation
      @message = "This code is not valid. Please try again."
    end
    redirect_to '/presentations/' + presentation_id + '/vote'
  end

end
