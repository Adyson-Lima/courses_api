class Api::V1::CoursesController < ApplicationController

  before_action :set_course, only: %i[show update destroy] #show update destroy

  def index
    @courses = Course.all
    render json: @courses
  end

  def show
    render json: @course
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      render json: @course, status: :created, location: api_v1_course_url(@course)
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  def update
    if @course.update(course_params)
      render json: @course
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @course.destroy!
  end

private

def set_course
  @course = Course.find(params[:id])
end

def course_params
  params.require(:course).permit(:name, :value)
end

end
