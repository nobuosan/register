Rails.application.routes.draw do
  
  get 'sessions/new'
  get'users/:id' ,to:"users#show"
  get 'signup' ,to:'users#new'
  root to:"homes#index"
  get'/memos/index',to:"memos#index"
  get '/new',to:"memos#new"
  post '/create' ,to:"memos#create"
  delete '/memos/:id' ,to:'memos#destroy'
  get '/memos/:id/edit' ,to:'memos#edit'
  patch '/memos/:id' ,to:'memos#update'
  get '/categories/:id',to:'categories#show'
  #login
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'  
  resources :users
end