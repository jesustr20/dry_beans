# == Schema Information
#
# Table name: routes
#
#  id         :bigint           not null, primary key
#  route_name :string
#  journey_id :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Route < ApplicationRecord
  belongs_to :journey
end
