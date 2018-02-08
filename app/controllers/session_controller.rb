class SessionController < ApplicationController

  def new
  end

  def create
    teacher = Teacher.find_by(email: params[:email])
    if teacher && teacher.authenticate(params[:password])
      session[:teacher_id] = teacher.id # just a hash
      redirect_to '/teachers/'
    else
      redirect_to '/login', notice: "This email / password combination is invalid. Please try again."
    end
  end

  def destroy
    session[:teacher_id] = nil
    redirect_to '/login'
  end
end
