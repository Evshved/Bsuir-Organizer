class SettingValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    @array = value.split(':').map {|i| i.to_i}
    unless ( (0..24).include? @array[0] ) && ( (0..60).include? @array[1] )
      record.errors[attribute] << (options[:message] || "The work schedule is incorrect")
    end
  end
end
