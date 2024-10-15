Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  match "*path", to: "application#catch_404", via: :all

  scope module: 'api' do
    namespace :v1 do
      resources :jobs
      # resources :geeks
      # resources :applies
      resources :companies do
        resources :jobs
      end
    end
   end
end
