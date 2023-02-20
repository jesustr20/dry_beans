module Destinations
  class List
    SORT = 'type asc'
    attr_accessor :query

    def initialize(options:)
      @query = options[:q]
    end

    def perform
      res = Destination.ransack(query)
      res.sorts = SORT if res.sorts.empty?
      res.result(distinct: true)
    end
  end
end
