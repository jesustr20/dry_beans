# == Schema Information
#
# Table name: journeys
#
#  id           :bigint           not null, primary key
#  journey_name :string
#  route_id     :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Journey < ApplicationRecord
  #Associations
  belongs_to :route_planner
  has_many :destination, dependent: :destroy

  #Validations
  validates :journey_name, presence: true, uniqueness:{
    message: lambda { |_object, data|
      "El nombre del viaje #{data[:value]} ya existe"
    }
  }
  accepts_nested_attributes_for :destination, allow_destroy: true

  #methods for ransack => search in routes = nil?
  def self.ransackable_attributes(auth_object = nil)
    %w(created_at id journey_name route_id updated_at)
  end
end

