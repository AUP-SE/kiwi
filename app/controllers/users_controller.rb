class UsersController < ApplicationController
    before_action :set_user, only:[:show, :edit]
    skip_before_action :authorize, only: [:new, :create, :index]
    def show
        id = params[:id] 
        @user = User.find(id)
    end
    
    def index
        @users = User.all
        @course = Course.find(params[:course][:c_id])
    end
    
    def professors
        @users = User.all
    end
    
    def new
        @user= User.new
    end
      
    

    
    def create 
        user = User.new(user_params)
        pr = (user.isProfessor==true) ? "Pr." :"" 
        if (user.password==""&&user.password!=user.passwordConfirm)
         flash[:notice] = "Passwords do not match "
         redirect_to '/signup'
        
        elsif user.save
            session[:user_id] = user.id
            session[:user_name]=user.name
            flash[:notice] = "Welcome #{pr} #{user.name}!"
            redirect_to '/'
        else
            flash[:warning] = "Please fill in all fields."
            redirect_to '/signup'
        end
    end
        
     
    
    def create1notToUSe
     if params[:password]!=params[:passwordConfirm]
         flash[:notice] = "Passwords do not match; "+params[:password]+" "+params[:passwordConfirm]
         redirect_to '/signup'
     else
        user = User.create(user_params)
     
        if user.save
            session[:user_id] = user.id
            flash[:notice] = "Welcome #{user.name}!"
            redirect_to '/'
        else
            flash[:warning] = "Please fill in all fields."
            redirect_to '/signup'
        end
     end
    end
    
    

private
    
    def set_user
        @user = User.find(params[:id])
    end
    
  def user_params
    params.require(:user).permit(:name, :isProfessor, :email, :password, :passwordConfirm)
  end
end
 
