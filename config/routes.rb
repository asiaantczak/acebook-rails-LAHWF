Rails.application.routes.draw do
  get 'startup/index'

  devise_for :users
  # For details on the DSL available within this file,
  # see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
  resources :posts
  resources :users, only: [:show]
  put 'update/posts'

end
