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
  include ValidatableEnum
  #constants
  ONLY_ALLOWS_LETTERS = { with: /\A[a-zA-Z]+\z/, message: "Solo se permiten letras"}

  #Associations
  belongs_to :journey
  #Validations
  validates :destination_name, presence: true
  validates :firstname, presence: true, format: ONLY_ALLOWS_LETTERS
  validates :lastname, presence: true, format: ONLY_ALLOWS_LETTERS
  validates :dni, presence: true
  validates :country, presence: true, format: ONLY_ALLOWS_LETTERS
  validates :province, presence: true, format: ONLY_ALLOWS_LETTERS
  validates :district, presence: true
  validates :avenue, presence: true
  validates :product_name, presence: true
  #enum type_operation: {entrega: "entrega", retiro: "retiro"}
  enum type_operation: %i[entrega retiro]  
  validates :type_operation, inclusion: { 
            in: type_operations.keys,
            message: "Valores permitidos: #{type_operations.keys.join(', ')}}"
            }
  validatable_enum :type_operation
end
