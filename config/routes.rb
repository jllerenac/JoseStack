Rails.application.routes.draw do
  resources :questions
  resources :answers
   
  devise_for :users
  # I am setting the home page

  devise_scope :user do
#   if !user_signed_in? 
  #    root to: "devise/sessions#new"
 #   else 
      root to: "questions#index"
 #   end

    
  end

 # get 'questions/index'
  get 'questions/new'
  get 'pages/home'
  get 'devise/sessions'
  get 'pages/questions'
  get 'users/sign_in'
  get 'users/sign_out'
  get 'pages/summary'

  
   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

