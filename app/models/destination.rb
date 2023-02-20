# == Schema Information
#
# Table name: destinations
#
#  id               :bigint           not null, primary key
#  type_operation   :string
#  destination_name :string
#  firstname        :string
#  lastname         :string
#  dni              :string
#  country          :string
#  province         :string
#  district         :string
#  avenue           :string
#  product_name     :string
#  journey_id       :bigint           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Destination < ApplicationRecord
  #Associations
  belongs_to :journey
end
