module Journeys
  class List
    SORT = 'journey_name asc'
    attr_accessor :query

    def initialize(options:)
      @query = options[:q]
    end
    
    def perform
      res = Journey.ransack(query)
      res.sorts = SORT if res.sorts.empty?
      res.result(distinct: true)
    end
  end
end