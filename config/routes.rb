Rails.application.routes.draw do
    root to: 'gardens#index'

    resources :gardens, only: :show do
        resources :plants, only: [ :new, :create ]
    end
end
