class CoursesController < ApplicationController
  def course_params
    params.require(:course).permit(:title, :coursecode, :professor, :semester, :students)
  end
  
  def show
    id = params[:id] 
    @courses = Course.find(id)
  end
    
  def index
    @courses = Course.all
  end


end