Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # Defines the root path route ("/")
  # root "posts#index"

  # =========== USER ROUTES ===============
  resources :users
  # =========== BOOKINGS ROUTES ===============
  resources :bookings, except: [:new, :create] do
    member do
      patch :accept
      patch :decline
    end
  end
  # =========== WATCH ROUTES ===============
  resources :watches do
    resources :bookings, only: [:new, :create]
  end
  # =========== DASHBOARD ROUTES ===============
  get "/user/dashboard", to: "pages#dashboard"

end
