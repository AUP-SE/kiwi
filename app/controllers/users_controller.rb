class UsersController < ApplicationController
    def new 
    end 
    
    def show
    end
    
    
    def create
        user = User.new(user_params)
     if user.save
        session[:user_id] = user.id
        flash[:notice] = "Welcome #{user.name}!"
        redirect_to '/'
     else
        flash[:warning] = "Please fill in all fields."
        redirect_to '/signup'
     end
    end
    
    

private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
 