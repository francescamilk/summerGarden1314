Rails.application.routes.draw do
    root to: 'gardens#index'

    resources :gardens, only: :show do
        resources :plants, only: :create
    end

    resources :plants, only: :destroy do
        resources :plant_tags, only: [ :new, :create ]
    end

    resources :plant_tags, only: :destroy
end
