class User < ActiveRecord::Base

     #this is for the bcrypt password security thingy apparently. kk cool
    validates :name, :email, :password, :passwordConfirm, presence: true
    has_and_belongs_to_many :users
  # When a new user is created they must create a login password
    
    #def create()
         #0 = name, 1 = username, 2 = password, 3 = email, 4 = DOB, 5 = ac
     #   if user.checkvals(user_params)
      #      @user = Users.create!(user_params) 
       # end
    #end

  
end
