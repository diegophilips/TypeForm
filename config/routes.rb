Rails.application.routes.draw do
  root to: "responses#index"
  resources :responses, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
