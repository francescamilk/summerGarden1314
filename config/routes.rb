Rails.application.routes.draw do
    root to: 'gardens#index'

    resources :gardens, only: :show do
        resources :plants, only: :create 
    end

    resources :plants, only: :destroy
end
