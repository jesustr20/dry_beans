module Api
  module V1
    class JourneysController < ApplicationController

      def create
        service = ::Journeys::Create.new(attributes: permitted_params)
        render json: JourneysSerializer.render(service.perform)
      end

      private

      def permitted_params
        params.require(:journey).permit(:journey_name, :route_planner_id)
      end
    end
  end
end