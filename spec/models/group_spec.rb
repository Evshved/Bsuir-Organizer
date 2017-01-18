require 'rails_helper'

describe Group, type: :model do
  it { should allow_value('650504').for(:number_of_group) }
  it { should allow_value('21809').for(:id_group_api) }
  it { should allow_value('none').for(:empty) }
  it { should allow_value('active').for(:empty) }

  it { should_not allow_value('6650504').for(:number_of_group) }
  it { should_not allow_value('218609').for(:id_group_api) }
  it { should_not allow_value('non').for(:empty) }
  it { should_not allow_value('activee').for(:empty) }
end
