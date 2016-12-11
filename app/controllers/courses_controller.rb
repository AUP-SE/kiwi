class CoursesController < ApplicationController
  def course_params
    params.require(:course).permit(:title, :coursecode, :professor, :semester)
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
    begin 
      @course = Course.create!(course_params)
      flash[:notice] = "#{@course.title} was successfully created!"
      redirect_to courses_path
    rescue ActiveRecord::RecordInvalid => e
      flash[:notice] = e.message 
      redirect_to courses_create_path
      
    #if @course.save
    #  flash[:notice] = "#{@course.title} was successfully created!"
   #   redirect_to courses_path
    
    #else
    #  flash[:notice] = "Please fill in all fields."
    #  redirect_to courses_create_path 
    end
  end
  

end