class SettingValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    @array = value.split(':').map(&:to_i)
    return true if ((0..24).cover? @array[0]) && ((0..60).cover? @array[1])
    record.errors[attribute] << (options[:message] ||
        'Field is incorrect')
  end
end
