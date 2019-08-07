Rails.application.routes.draw do
  resources :questions
  devise_for :users
  # I am setting the home page
  root 'pages#home'
 # get new_user_session_path
  get 'pages/home'

  get 'pages/questions'

  get 'pages/summary'

  post 'questions/new'
   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

