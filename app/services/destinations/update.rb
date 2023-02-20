module Destinations
  class Update
    attr_reader :destination, :attributes

    def initialize(destination:, attributes:)
      @attributes = attributes
      @destination = destination
    end

    def perform
      destination.update!(attributes) && destination
    end
  end
end
