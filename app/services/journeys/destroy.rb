module Journeys
  class Destroy
    attr_accessor :journey

    def initialize(journey:)
      @journey = journey
    end
    
    def perform
      journey.destroy
    end
  end
end