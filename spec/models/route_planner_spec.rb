require 'rails_helper'

RSpec.describe RoutePlanner, type: :model do
  describe 'Validacion del modelo route planner' do
    subject { build(:route_planner) }
    
    it 'Validar si el nombre de la ruta esta presente' do
      should validate_presence_of(:route_name)
    end

    it 'Validar si el nombre de la ruta es unica' do
      should validate_uniqueness_of(:route_name)
    end
  end
end
