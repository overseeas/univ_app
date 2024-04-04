class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def create
    if Student.create(student_params)
      redirect_to students_path
    else
      render "new"
    end
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def show
    @student = Student.find(params[:id])
  end

  def update
    student = Student.find(params[:id])
    if student.update(student_params)
      redirect_to student_path
    else
      render "edit"
    end
  end

  def destroy
  end


  private

  def student_params
    params.require(:student).permit(:name, :email, :password)
  end
end
