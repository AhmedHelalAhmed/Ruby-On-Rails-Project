Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  #to make the start page is the courses
  root to: 'courses#index'

  resources :lectures do
    resource :comments
  end
  resources :courses
  # resources :courses do
  #   resources :lectures
  # end

end
