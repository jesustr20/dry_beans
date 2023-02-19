# == Schema Information
#
# Table name: journeys
#
#  id             :bigint           not null, primary key
#  journey_name   :string
#  destination_id :bigint           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Journey < ApplicationRecord
  belongs_to :destination
end
