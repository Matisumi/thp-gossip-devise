Rails.application.routes.draw do


 devise_for :users
 root "gossips#index"
 resources :gossips
 post 'gossips/new', to: 'gossips#create'
 post '/gossips/:id/edit', to:'gossips#update'

 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
