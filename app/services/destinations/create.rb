module Destinations
  class Create
    attr_reader :attributes

    def initialize(attributes:)
      @attributes = attributes
    end

    def perform
      Destination.create!(attributes)
    end
  end
end
