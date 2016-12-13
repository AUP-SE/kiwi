class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:user][:email])
    # If the user exists AND the password entered is correct.
    if user 
      if user.password!=(params[:user][:password])
        flash[:notice] = "Password incorrect"
        redirect_to '/login'
      else
      # Save the user id inside the browser cookie. This is how we keep the user 
      # logged in when they navigate around our website.
        session[:user_id] = user.id
        session[:isProfessor] = user.isProfessor
        flash[:notice]= "Welcome, "+user.name
        redirect_to '/'
      end
    else
    # If user's login doesn't work, send them back to the login form.
      flash[:notice] = "email incorrect."

      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    session[:isProfessor] = nil
    flash[:notice] = "You have been logged out"
    redirect_to '/login'
  end

end