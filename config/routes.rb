Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      resources :route_planners, only: %i[show create update destroy] do
        post :search, action: :index, on: :collection
      end

      resources :journeys, only: %i[show create update destroy] do
        post :search, action: :index, on: :collection
      end

      resources :destinations, only: %i[show create  update destroy] do
        post :search, action: :index, on: :collection
      end

    end
  end
end
