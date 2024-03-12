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
  resources :bookings do
    member do
      patch :accept
      patch :decline
    end
  end


 # =========== WATCH ROUTES ===============
  get "/watches" => "watches#index"

  get "/watches/new" => "watches#new"
  post "/watches" => "watches#create"

  get "/watches/:id/edit" => "watches#edit"
  patch "/watches/:id" => "watches#update"

  delete "/watches/:id" => "watches#destroy"

  get "/watches/:id" => "watches#show"
  end