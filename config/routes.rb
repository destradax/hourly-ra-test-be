Rails.application.routes.draw do
  resources :class_codes, defaults: {format: :json}
  # resources :class_codes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
