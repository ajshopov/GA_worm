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
    #updating date in start and end date time fields with preso date
    year = p1.date.year
    month = p1.date.month
    day = p1.date.day
    p1.start_time = params[:start_time]
    start_time_with_correct_date = p1.start_time.change(year: year, month: month, day: day)
    p1.start_time = start_time_with_correct_date
    p1.end_time = params[:end_time]
    end_time_with_correct_date = p1.end_time.change(year: year, month: month, day: day)
    p1.end_time = end_time_with_correct_date
    p1.save

    redirect_to '/teachers/show'
  end

	def show
    @presentation = Presentation.find(params[:id])
    @start_time = @presentation.start_time.strftime("%H:%M:%S")
    @end_time = @presentation.end_time.strftime("%H:%M:%S")
	end

  def index
    redirect_to '/teachers/show'
  end

  def vote
    @presentation = Presentation.find_by uuid:params[:uuid]
  end

  def check
    presentation_uuid = params[:uuid]
    @presentation = Presentation.find_by uuid:presentation_uuid
    if @presentation
      redirect_to '/presentations/' + presentation_uuid + '/vote'
    else
      redirect_to '/', notice: "This code is not valid. Please try again."
    end
  end

end
