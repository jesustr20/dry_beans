module Api
  module V1
    class RoutePlannersController < ApplicationController
    
      def show
        render json: RoutePlannersSerializer.render(route_planner, view: :with_journey)
      end
    
      def create
        service = ::RoutePlanners::Create.new(attributes: permitted_params)
        render json: RoutePlannersSerializer.render(service.perform)
      end

      private

      def route_planner
        @route_planner ||= RoutePlanner.find(params[:id])      
      end

      def permitted_params
        params.require(:route_planner).permit(:route_name)
      end
    end
  end
end
