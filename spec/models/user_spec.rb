require 'rails_helper'

describe User, type: :model do
  it { should allow_value('kate11@gmail.com').for(:email) }
  it { should allow_value('11aeae1').for(:user_name) }
  it { should allow_value('201011').for(:number_of_group) }
  it { should allow_value('6М0301').for(:number_of_group) }

  it { should_not allow_value('111').for(:user_name) }
  name = 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
  it { should_not allow_value(name.to_s).for(:user_name) }
  it { should_not allow_value('kate11gmail.com').for(:email) }
  it { should_not allow_value('6М03011').for(:number_of_group) }
  it { should_not allow_value('6011').for(:number_of_group) }
end
