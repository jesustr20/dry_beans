module RoutePlanners
  class Update
    attr_reader :route_planner, :attributes

    def initialize(route_planner:, attributes:)
      @attributes = attributes
      @route_planner = route_planner
    end

    def perform
      route_planner.update!(attributes) && route_planner
    end
  end
end