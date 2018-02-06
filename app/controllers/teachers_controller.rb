class TeachersController < ApplicationController

	def new
		teachers = Teacher.all
	end

	def create 
		teachers = Teacher.new
		teachers.email = params[:email]
		teachers.username = params[:username]
		teachers.password_digest = params[:password_digest]
		teachers.save
		redirect_to '/login'
	end

end
