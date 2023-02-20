module Api
  module V1
    class JourneysController < ApplicationController
      def index
        service = ::Journeys::List.new(options: params)
        @pagy, records = pagy(service.perform, pagy_attributes)
        render json: JourneysSerializer.render(records, view: :list)
      end
    
      def show
        render json: JourneysSerializer.render(journey, view: :list)
      end
    
      def create
        service = ::Journeys::Create.new(attributes: permitted_params)
        render json: JourneysSerializer.render(service.perform)
      end
    
      def update
      end
    
      def destroy
      end

      private

      def journey
        @journey ||= Journey.find(params[:id])
      end

      def permitted_params
        params.require(:journey).permit(:journey_name, :route_planner_id,
                                        destinations_attributes: %i[id type_operation destination_name firstname 
                                         lastname dni country province district avenue product_name])
      end
    end
  end
end