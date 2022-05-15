Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'application#welcome'

  get '/items', to: 'items#index'
  get '/items/new', to: 'items#new'
  get '/items/:id', to: 'items#show'
  post '/items', to: 'items#create'
  get '/items/:id/edit', to: 'items#edit'
  patch '/items/:id', to: 'items#update'
  delete '/items/:id', to: 'items#destroy'

  get '/warehouses', to: 'warehouses#index'
  get '/warehouses/new', to: 'warehouses#new'
  post '/warehouses', to: 'warehouses#create'
  delete '/warehouses/:id', to: 'warehouses#destroy'
end
