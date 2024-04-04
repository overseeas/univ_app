class StudentsController < ApplicationController
  before_action :student_obj, only: [:edit, :show, :update, :destroy]

  def index
    @students = Student.all
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to @student
    else
      render :new
    end
  end

  def new
    @student = Student.new
  end

  def edit
  end

  def show
  end

  def update
    if @student.update(student_params)
      redirect_to student_path
    else
      render :edit
    end
  end

  def destroy
    @student.destroy
    redirect_to students_path
  end


  private

  def student_params
    params.require(:student).permit(:name, :email, :password)
  end

  def student_obj
    @student = Student.find(params[:id])
  end
end
