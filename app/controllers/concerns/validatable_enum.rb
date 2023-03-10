module ValidatableEnum
  extend ActiveSupport::Concern

  class_methods do 
    def validatable_enum(attribute)
      attribute(attribute, :enum) do |subtype|        
          ValidatableEnumType.new(attribute, public_send(attribute.to_s.pluralize), subtype)        
      end
    end
  end
end


