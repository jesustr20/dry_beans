module Journeys
  class Create
    attr_reader :attributes

    def initialize(attributes:)
      @attributes = attributes
    end
    
    def perform
      Journey.create!(attributes)
    end
  end
end