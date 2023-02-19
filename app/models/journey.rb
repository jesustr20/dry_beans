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
  belongs_to :route
  has_many :destination, dependent: :destroy
end
