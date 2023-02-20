module Destinations
  class Destroy
    attr_accessor :destination

    def initialize(destination:)
      @destination = destination
    end

    def perform
      destination.destroy
    end
  end
end