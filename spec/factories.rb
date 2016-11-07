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
end
