class WeekValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    check_point = value.to_s.include? '.'
    return unless check_point && interval_time(record, attribute, value) != true
    record.errors[attribute] << (options[:message] || 'Field is incorrect')
  end

  def interval_time(_, _, value)
    value = value.split('.')
    value.map!(&:to_i)
    true if trully(value)
  end

  private

  def trully(value)
    a = (1..31).cover? value[0]
    b = (1..12).cover? value[1]
    c = (2017..2030).cover? value[2]
    a && b && c
  end
end
