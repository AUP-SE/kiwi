class User < ActiveRecord::Base

  # When a new user is created they must create a login password
  attr_accessor :password
    
    def self.checkvals(user_params)
        if params[:name].match(/\D/xi) != nil
            if params[:email].match(/@/i) != nil
                if params[:DOB].match(/\d\d-\D\D\D-\d\d\d\d/i) != nil
                    if User.find(params[:username]) != nul
                        return true
                    end
                end
            end
        end
        return false
    end
    
    def create()
         #0 = name, 1 = username, 2 = password, 3 = email, 4 = DOB, 5 = ac
        if user.checkvals(user_params)
            @user = Users.create!(user_params) 
        end
    end

  
end
