Rails.application.routes.draw do

  root 'bootstrapped_posts#index'
  resources :bootstrapped_posts
  resources :posts

end
