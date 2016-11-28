FactoryGirl.define do
  factory :user do
    sequence(:user_name ) { |n| Faker::Internet.user_name + "-#{n}" }
    sequence(:email)      { Faker::Internet.email }
    number_of_group       "123456"
    password { Faker::Internet.password(8) }
    password_confirmation { password }
  end
  factory :color do
    color_work               "red"
    color_labs               "red"
    color_lectures           "red"
    color_travel             "red"
    color_seminars           "red"
    color_nonactive_lessons  "red"
  end
  factory :setting do
    beginning_of_work         "2:00"
    end_of_work               "08:00"
    time_home_to_work         "999"
    time_work_to_univer       "1"
    time_univer_to_home       "55"
    min_work_time             "112"
  end
end
