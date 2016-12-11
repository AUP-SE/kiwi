class UsersController < ApplicationController
    def new 
    end 
    
    def show
    end
    
    
    def create
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

  def user_params
    params.require(:user).permit(:name, :email, :password, :passwordConfirm, :isProfessor)
  end
end
 