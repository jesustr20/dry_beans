Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      resources :route_planners, only: %i[show create]

      resources :journeys, only: %i[create]

      resources :destinations, only: %i[create]
    end
  end
end
