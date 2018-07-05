Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :brews, only: [:index, :show, :new, :create]
  resources :customers, only: :show
  resources :purchases, only: [:new, :create]
end
