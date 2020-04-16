Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  resources :categories, only: %i[index show new create edit update]
  resources :ingredients, only: %i[index show new create edit update]
end
