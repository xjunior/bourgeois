Bourgeois::Engine.routes.draw do
  root 'products#index'

  resources :products
end
