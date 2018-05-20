Rails.application.routes.draw do



  #to make the start page is the courses
  root to: 'courses#index'

  resources :lectures do
    member do
      put "like"=>"lectures#upvote"
      put "dislike"=>"lectures#downvote"
    end
    resource :comments
  end
  resources :courses
  # resources :courses do
  #   resources :lectures
  # end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
