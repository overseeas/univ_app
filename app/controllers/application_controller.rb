class ApplicationController < ActionController::Base
  private

  def current_student
    @_current_student ||= session[:current_student_id] && Student.find_by(id: session[:current_student_id])
  end
end
