module TeachersHelper
  def current_user
    Teacher.find_by(id: session[:teacher_id])
  end

  def logged_in?
    !!current_user
  end
end
