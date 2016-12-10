class UsersController < ApplicationController
  def user_params
    params.require(:name).permit(:email, :department, :major, :isProfessor, :isHelper, :CourseID1, :CourseID2, :CourseID3, :CourseID4, :biography, :created_at, :updated_at)
  end
  
  def show
    id = params[:id] 
    @user = User.find(id)
  end
    
  def index
    @users = User.all
    @course = Course.find(params[:course][:c_id])
  end

  def new

  end
  
  def create
    @user = User.create!(user_params)
    flash[:notice] = "#{@user.name} was successfully created."
    redirect_to users_path
  end
  
  def become_helper
    #@course = Course.find(params[:course], [:c_id])
    #@user = User.find()
    @user = User.isHelper('true')
    flash[:notice] = "#{@user.name} is now a helper"
    redirect_to 'users/index'
  end

end