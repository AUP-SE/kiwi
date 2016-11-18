class CoursesController < ApplicationController
  def course_params
    params.require(:course).permit(:title, :coursecode, :professor, :semester)
  end
  
   def show
    id = params[:id] 
    @courses = Course.find(id)
  end
    
  def index
    @courses = Course.all
  end
  
  def new
  end
  
  def create
    @course = Course.create!(course_params)
    flash[:notice] = "#{@course.title} was successfully created."
    redirect_to courses_path
  end
  
  def search
    #redirect_to '/courses/index'
    
  flash[:notice] = "'#{params[:q]}' was not found"
    redirect_to '/'
  end
  
end