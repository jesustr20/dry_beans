# == Schema Information
#
# Table name: routes
#
#  id         :bigint           not null, primary key
#  roue_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Route < ApplicationRecord
  #Associations
  has_many :journey, dependent: :destroy
end
