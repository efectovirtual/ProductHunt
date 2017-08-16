Rails.application.routes.draw do

  root 'products#index'

  get 'login', to: 'session#new'
  post 'login', to: 'session#create'
  delete 'logout', to: 'session#destroy'

  resources :users, only: [:new, :create]
  
  resources :products do
    resource :vote, only: [:create, :destroy]
    resources :comments, only: [:create]
  end

  


end



  # get '/products', to: 'products#index'
  # get '/products/new', to: 'products#new', as: 'new_product'

  # post '/products', to: 'products#create'

  # get '/products/:id', to: 'products#show', as: 'product'
  # get '/products/:id/edit', to: 'products#edit', as: 'edit_product'
  
  # patch '/products/:id', to: 'products#update'

  # delete '/products/:id', to: 'products#destroy'

  # resources :products, only: [:index] #solamente lista la ruta index
  # resources :products, except: [:index] #lista todas las rutas exepto index