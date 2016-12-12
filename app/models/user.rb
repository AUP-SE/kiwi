class User < ActiveRecord::Base
    has_secure_password #this is for the bcrypt password security thingy apparently. kk cool
    validates :name, :isProfessor, :email, :password, :passwordConfirm, presence: true
  # When a new user is created they must create a login password
    
    #def create()
         #0 = name, 1 = username, 2 = password, 3 = email, 4 = DOB, 5 = ac
     #   if user.checkvals(user_params)
      #      @user = Users.create!(user_params) 
       # end
    #end

  
end
