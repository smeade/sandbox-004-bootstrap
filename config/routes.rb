Rails.application.routes.draw do

  resources :bootstrapped_posts

  root 'posts#index'
  resources :posts

end
