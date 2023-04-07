class ApplicationController < ActionController::API
  include Pagy::Backend
  #rescue_from ActiveRecord::RecordNotFound, with: :not_found

  after_action { pagy_headers_merge(@pagy) if @pagy }

  def pagy_attributes
    {
      page: params[:page],
      items: params[:items] || Pagy::DEFAULT[:items]
    }
  end

  def not_found
    render json: { error: 'Not found' }, status: 404
  end
end
