class DestinationsSerializer < Blueprinter::Base
  identifier :id
  fields :type_operation, :destination_name, :firstname, :lastname, :dni, :country, :province, :district, :avenue, :product_name
end