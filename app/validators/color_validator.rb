class ColorValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless (value.length < 15) && (value.length > 2)
      record.errors[attribute] << (options[:message] || "Color is not validate")
    end
  end
end
