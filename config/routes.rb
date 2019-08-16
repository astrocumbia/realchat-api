Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :rooms, only: [:index, :show] do
        resources :messages, only: [:index]
      end
    end
  end
  
end
