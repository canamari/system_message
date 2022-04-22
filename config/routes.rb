Rails.application.routes.draw do
  root 'users#new'

  resources :messages

  resources :users
  post '/cadastre_rh' => 'users#new'
  get  '/login'  => 'sessions#login'
  post '/login'  => 'sessions#new'
  get  '/logout'   => 'sessions#destroy'
  post '/logout'   => 'sessions#destroy'
end
