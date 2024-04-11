class LoginController < ApplicationController

  def create
    if student = Student.authenticate(params[:name], params[:password])
      session[:current_student_id] = student.id
      rediret_to root_url
  end

  def destroy
    session.delete(:current_student_id)
    flahs[:notice] = "You have succssfully logged out."
    @_current_student = nil
    redirect_to root_url, status: :see_other
  end
end
