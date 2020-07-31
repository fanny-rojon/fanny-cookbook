Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  resources :categories, only: %i[index show new create edit update]
  resources :ingredients, only: %i[index show new create edit update]
  resources :recipes, only: %i[show new create edit update]
end
