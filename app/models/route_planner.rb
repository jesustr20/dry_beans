# == Schema Information
#
# Table name: routes
#
#  id         :bigint           not null, primary key
#  route_name :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class RoutePlanner < ApplicationRecord
  #Associations
  has_many :journey, dependent: :destroy

  #methods for ransack => search in routes = nil?
  def self.ransackable_attributes(auth_object = nil)
    %w(created_at id route_name updated_at)
  end
end
