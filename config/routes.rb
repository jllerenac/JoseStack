Rails.application.routes.draw do

  # I am setting the home page
  root 'pages#home'

  get 'pages/home'

  get 'pages/questions'

  get 'pages/summary'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
