require 'rails_helper'

RSpec.describe Journey, type: :model do
  describe 'Validacion del modelo journey' do
    subject { build(:journey) }

    it 'Validar si el nombre del viaje esta presente' do
      should validate_presence_of(:journey_name)
    end

    #it 'Validar si el nombre del viaje es unico' do
    #  #should validate_uniqueness_of(:journey_name).scoped_to(:route_planner_id)
    #  should (:journey_name, :route_planner_id).for(:journey)
    #end

    it 'Validar si existe una relacion con route planner' do
      should belong_to(:route_planner)
    end
  end
end
