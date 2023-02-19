# == Schema Information
#
# Table name: destinations
#
#  id         :bigint           not null, primary key
#  type       :string
#  name       :string
#  firstname  :string
#  lastname   :string
#  dni        :string
#  country    :string
#  province   :string
#  district   :string
#  avenue     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Destination < ApplicationRecord
end
