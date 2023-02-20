module RoutePlanners
  class Create
    attr_reader :attributes

    def initialize(attributes:)
      @attributes = attributes
    end
    
    def perform
      RoutePlanner.create!(attributes)
    end
  end
end