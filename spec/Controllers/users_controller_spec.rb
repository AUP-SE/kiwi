require 'rails_helper'

describe UsersController do
    describe 'create a new user' do
     it 'should render the new-user template' do
         get :new
         response.should render_template 'new'
     end
     it 'should call a model method to persist data' do
         user = stub('new user').as_null_object
         User.should_receive(:new).and_return(user)
         post :create, {:user => user}
     end
     it 'should render home' do
         user = stub('new user').as_null_object
         User.stub(:new).and_return(user)
         post :create, {:movie => movie}
         response.should redirect_to('/index')
     end
    end
end