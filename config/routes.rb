Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :exercises, only: [:index, :create, :destroy]
      resources :muscles, only: [:index, :create]
    end
  end
end
