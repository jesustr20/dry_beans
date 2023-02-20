class JourneysSerializer < Blueprinter::Base
  identifier :id
  fields :journey_name

  association :route_planner, blueprint: RoutePlannersSerializer

  view :list do    
    association :destination, blueprint: DestinationsSerializer
  end

  view :with_destination do
    association :route_planner, blueprint: RoutePlannersSerializer
    association :destination, blueprint: DestinationsSerializer
  end
end