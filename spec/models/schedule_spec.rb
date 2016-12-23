require 'rails_helper'

describe Schedule, type: :model do
  it { should allow_value('1').for(:id_of_week) }
  it { should allow_value('Пятница').for(:weekday) }
  it { should allow_value('08:00').for(:start_time_class) }
  it { should allow_value('09:35').for(:end_time_class) }
  it { should allow_value('СМпИМЭ').for(:name_of_subject) }
  it { should allow_value('ПЗ').for(:type_of_subject) }
  it { should allow_value('1').for(:id_of_subgroup) }
  it { should allow_value('а.901-5к.').for(:number_of_audience) }
  it { should allow_value('Наганова Т. Е.').for(:teacher) }
  it { should allow_value("We're a company of pioneers.").for(:note) }
end
