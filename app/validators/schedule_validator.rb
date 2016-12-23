class ScheduleValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    check = value.to_s.include? ':'
    if check
      interval_time(record, attribute, value)
    end
  end

  def interval_time(record, attribute, value)
    value = value.split(':')
    value.map!(&:to_i)
    return true if ((0..23).cover? value[0]) && ((0..59).cover? value[1])
    record.errors[attribute] << (options[:message] || 'Field is incorrect')
  end
end
