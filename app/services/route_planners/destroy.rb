module RoutePlanners
  class Destroy
    attr_accessor :route_planner

    def initialize(route:)
      @route = route_planner
    end
    
    def perform
      route_planner.destroy
    end
  end
end