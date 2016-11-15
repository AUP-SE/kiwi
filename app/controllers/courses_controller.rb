class CoursesController < ApplicationController
  def course_params
    params.require(:course).permit(:title, :coursecode, :professor, :semester)
  end
  
  def show
    id = params[:id] 
    @course = Course.find(id)
  end
  
  def index
    @course = Course.all
  end
  
  def new
  end
  
  def create
    @course = Course.create!(course_params)
    flash[:notice] = "#{@course.title} was successfully created."
    redirect_to courses_path
  end
  
end