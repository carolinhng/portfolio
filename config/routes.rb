Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'download_pdf', to: "pages#download_pdf"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :projects, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :project_technos, only: [:create]
  end

  resources :experiences, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :missions, only: [:create, :update]
  end

  resources :dashboards, only: [:index]
  resources :messages, only: [:index, :show, :create]
  resources :project_technos, only: [:destroy]
  resources :missions, only: [:destroy]
  resources :technos, only: [:create]
end
