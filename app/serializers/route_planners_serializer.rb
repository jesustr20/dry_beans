class RoutePlannersSerializer < Blueprinter::Base
  identifier :id
  fields :route_name
  
  view :with_journey do
    association :journey, blueprint: JourneysSerializer, name: :journeys, view: :list
  end
end