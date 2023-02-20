module Journeys
  class Update
    attr_reader :journey, :attributes

    def initialize(journey:, attributes:)
      @attributes = attributes
      @journey = journey
    end

    def perform
      journey.update!(attributes) && journey
    end
  end
end