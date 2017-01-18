require 'rails_helper'

describe Lesson, type: :model do
  it 'should validate' do
    should allow_value('1').for(:id_of_week)
    should allow_value('Пятница').for(:weekday)
    should allow_value('08:00').for(:start_time_class)
    should allow_value('09:35').for(:end_time_class)
    should allow_value('СМпИМЭ').for(:name_of_subject)
    should allow_value('ПЗ').for(:type_of_subject)
    should allow_value('1').for(:id_of_subgroup)
    should allow_value('442701').for(:id_of_group)
    should allow_value('а.901-5к.').for(:number_of_audience)
    should allow_value('Наганова Т. Е.').for(:teacher)
    should allow_value("We're a company of pioneers.").for(:note)

    should_not allow_value('152:00').for(:start_time_class)
    should_not allow_value('09:3525').for(:end_time_class)
  end

  it 'should save record' do
    FactoryGirl.create(:lesson)
  end
end
