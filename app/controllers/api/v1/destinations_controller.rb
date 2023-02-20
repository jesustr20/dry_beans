module Api
  module V1
    class DestinationsController < ApplicationController
      def index
      end
    
      def show
      end
    
      def create
        service = ::Destinations::Create.new(attributes: permitted_params)
        render json: DestinationsSerializer.render(service.perform)
      end
    
      def update
      end
    
      def destroy
      end

      private

      def destination
        @destination ||= Destination.find(params[:id])
      end

      def permitted_params
        params.require(:destination).permit(:journey_id, :type_operation, :destination_name, :firstname, :lastname, :dni, :country, :province, :district, :avenue, :product_name)
      end
    end
  end
end