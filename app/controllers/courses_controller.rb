class CoursesController < ApplicationController
   before_action :authorize
  def course_params
    params.require(:course).permit(:title, :coursecode, :professor, :semester)
  end
  
  def user_params
    params.require(:name)
  end
  
  def show
    id = params[:id] 
    @course = Course.find(id)
  end
    
  def index
    @courses = Course.all
  end
  
  def new
  end
  
  def create
    @course = Course.create(course_params)
    if @course.save
      flash[:notice] = "#{@course.title} was successfully created!"
      redirect_to "/courses"
    
    else
      flash[:notice] = "Please fill in all fields."
      redirect_to "/courses/new"
    end
  end
end