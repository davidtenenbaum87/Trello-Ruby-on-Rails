Rails.application.routes.draw do
  
  get 'goodbye/index'
  resources :projects
  resources :statuses
  resources :comments
  resources :tasks
  resources :users

  get '/' => 'welcome#index'
  get '/goodbye' => 'goodbye#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
