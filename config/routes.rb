Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/cocktails', to: 'cocktails#index'

  # # Cocktails
  # get '/cocktails/new', to: 'cocktails#new'

  # get '/cocktails/:id', to: 'cocktails#show'

  # post '/cocktails', to: 'cocktails#create'

  # get '/cocktails/:id/edit', to: 'cocktails#edit'

  # patch '/cocktails/:id', to: 'cocktails#update'
  root to: "cocktails#index"

  resources :cocktails do
    resources :doses, only: [:new, :create]
    resources :ingredients, only: [:create]
  end
  resources :doses, only: :destroy
end
