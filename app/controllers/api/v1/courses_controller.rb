class Api::V1::CoursesController < ApplicationController

  before_action :set_course, only: %i[show] #show update destroy

  def index
    @courses = Course.all
    render json: @courses
  end

  def show
    render json: @course
  end

private

def set_course
  @course = Course.find(params[:id])
end

def course_params
  params.require(:course).permit(:name, :value)
end

end
