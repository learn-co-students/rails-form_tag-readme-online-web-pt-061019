Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :posts, only: [:index, :new, :create]
  # create dynamic routes only using 'index' = '/posts' and 'new' = '/posts/new' and 'create' = '/posts'
end
