require 'rails_helper'

describe Setting, type: :model do
  it { should allow_value('23:59').for(:beginning_of_work) }
  it { should allow_value('2:35').for(:end_of_work) }
  it { should allow_value('22').for(:time_home_to_work) }
  it { should allow_value('235').for(:time_work_to_univer) }
  it { should allow_value('359').for(:time_univer_to_home) }
  it { should allow_value('235').for(:min_work_time) }
end
