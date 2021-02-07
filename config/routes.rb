Rails.application.routes.draw do
  root to: 'pages#home'
  get :home, to: "pages#home"
  resources :responses, only: [:index]
  resources :responses2, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
