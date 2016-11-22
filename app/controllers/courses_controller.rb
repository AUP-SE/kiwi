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
<<<<<<< HEAD


=======
  
  def new
  end
  
  def create
    @course = Course.create!(course_params)
    flash[:notice] = "#{@course.title} was successfully created."
    redirect_to courses_path
  end
  
>>>>>>> master
end