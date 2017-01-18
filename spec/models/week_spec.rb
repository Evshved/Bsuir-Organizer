require 'rails_helper'

describe Week, type: :model do
  it { should allow_value('01.03.2017').for(:date) }

  it { should_not allow_value('0.03.2017').for(:date) }
  it { should_not allow_value('1.00.2017').for(:date) }
  it { should_not allow_value('1.01.2015').for(:date) }

  it { should allow_value('4').for(:number_of_week) }

  it { should_not allow_value('5').for(:number_of_week) }
  it { should_not allow_value('0').for(:number_of_week) }
end
