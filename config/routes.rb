Rails.application.routes.draw do

  resources :todos, only: [:index, :new, :create] do
    resource :completion, only: :create
  end
  resources :sessions, only: [:new, :create]

  root "todos#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
