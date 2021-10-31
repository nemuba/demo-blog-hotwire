Rails.application.routes.draw do
  resources :posts
  get '/notice', to: 'posts#clear_message'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Almost every application defines a route for the root path ("/") at the top of this file.
  # root "articles#index"
end
