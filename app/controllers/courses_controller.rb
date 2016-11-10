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
  
end