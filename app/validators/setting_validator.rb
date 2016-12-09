class SettingValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if value.nil?
      record.errors[attribute] << (options[:message] || 'Field is incorrect')
    end
    check = value.to_s.include? ':'
    if check
      interval_time(record, attribute, value)
    else
      count_of_minutes(record, attribute, value)
    end
  end

  def interval_time(record, attribute, value)
    value = value.split(':')
    value.map!(&:to_i)
    return true if ((0..23).cover? value[0]) && ((0..59).cover? value[1])
    record.errors[attribute] << (options[:message] || 'Field is incorrect')
  end

  def count_of_minutes(record, attribute, value)
    digit = value.to_i
    return true if (digit >= 1) && (digit <= 999)
    record.errors[attribute] << (options[:message] || 'Field is incorrect')
  end
end
