class TeachersController < ApplicationController

	def new
	end

	def index
		redirect_to '/teachers/<%=teacher.id%>'
	end

	def create
		teacher = Teacher.new
		teacher.email = params[:email]
		teacher.username = params[:username]
		teacher.password = params[:password]
		teacher.save
		session[:teacher_id] = teacher.id
		redirect_to '/teachers'
	end

	def show
	@teacher = Teacher.find(id=session[:teacher_id])
	@presentations = @teacher.presentations
	@presentations.each do ||
		
	end
	 # @presentations = Presentation.where(teacher_id: @teacher.id)
	end

end
