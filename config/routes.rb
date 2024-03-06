Rails.application.routes.draw do
  devise_for :users
  # , skip: [:registrations]
  # devise_scope :user do
  #   get 'users/edit', to: 'devise/registrations#edit', as: 'edit_user_registration'
  #   patch 'users', to: 'devise/registrations#update', as: 'user_registration'
  # end

  root to: "pages#home"
  get 'download_pdf', to: "pages#download_pdf"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :messages, only: [:create]
end
