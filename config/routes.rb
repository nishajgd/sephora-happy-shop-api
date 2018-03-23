Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :products
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'api/v1/products#index'
end