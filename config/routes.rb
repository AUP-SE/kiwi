Rails.application.routes.draw do

  root 'welcome#index'
  get 'welcome/index'
  get 'courses/index'
  get 'about/index'
  get 'request/index'

  #get 'create/index'
  #get 'login/index'
  #get 'login/logedin/index'
  
  #the following are login/signup routes specified by the tutorial prof gave me. idk
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get 'users/professors'

  controller :sessions do
      get 'login' => :new
      post '/login' => :create
      get '/logout' => :destroy
  end
end
