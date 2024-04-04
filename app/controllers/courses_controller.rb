class CoursesController < ApplicationController
  before_action :course_obj, only: [:edit, :show, :update, :destroy]

  def index
    @courses = Course.all
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to @course
    else
      render :new
    end
  end

  def new
    @course = Course.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
  def course_params
    params.require(:course).permit(:title, :room_number, :description)
  end

  def course_obj
    @course = Course.find(params[:id])
  end
end
