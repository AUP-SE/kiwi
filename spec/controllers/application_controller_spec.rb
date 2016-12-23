require 'rails_helper'

describe ApplicationController do
    describe 'current_user' do
        it 'should call the model method that finds user by id' do
            example = FactoryGirl.create(:user)
            request.session[:user_id] = example.id
            expect(User).to receive(:find_by_id)
        end 
        
        it 'returns the current user when user is signed in' do
            example = FactoryGirl.create(:user)
            request.session[:user_id] = example.id
            check =  subject.current_user 
            expect(check).to eq(example)
        end
    end
    
    describe 'is_prof' do 
        it 'correctly identifies whether the user is a professor or a student'
    end
    
    desribe 'logged_in?' do 
        it "returns false when user isn't logged in "
        it "returns true when user is logged in" 
    end
end
