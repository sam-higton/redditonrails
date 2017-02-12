Rails.application.routes.draw do
  get 'home/index'

  resources :posts
  get 'posts/:id/upvote', to: 'posts#upvote'
  get 'posts/:id/downvote', to: 'posts#downvote'


  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
