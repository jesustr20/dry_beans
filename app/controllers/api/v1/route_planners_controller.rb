module Api
  module V1
    class RoutePlannersController < ApplicationController
      def index
        service = ::RoutePlanners::List.new(options: params)
        @pagy, records = pagy(service.perform, pagy_attributes)
        render json: RoutePlannersSerializer.render(records, view: :with_journey)
      end
    
      def show
        render json: RoutePlannersSerializer.render(route_planner, view: :with_journey)
      end
    
      def create
        service = ::RoutePlanners::Create.new(attributes: permitted_params)
        render json: RoutePlannersSerializer.render(service.perform)
      end
    
      def update
      end
    
      def destroy
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
