class StudentsController < ApplicationController
  def student_params
       params.require(:student)
  end
  
   def show
    id = params[:id] 
    @student = Student.find(id)
  end
    
  def index
    @students = Student.all
  end
  
  def new
    @studnets = Student.new
  end
  
    def create
    @student = Student.create!(student_params)
    flash[:notice] = "#{@student.id} was successfully created."
    redirect_to students_path
    end
end
