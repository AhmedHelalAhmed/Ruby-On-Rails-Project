Rails.application.routes.draw do
  resources :courses
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  #to make the start page is the courses
  root to: 'courses#index'
end
