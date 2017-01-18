FactoryGirl.define do
  factory :user do
    sequence(:user_name) { |n| Faker::Internet.user_name + "-#{n}" }
    sequence(:email)      { Faker::Internet.email }
    number_of_group       '123456'
    password { Faker::Internet.password(8) }
    password_confirmation { password }
  end
  factory :color do
    color_work               'red'
    color_labs               'red'
    color_lectures           'red'
    color_travel             'red'
    color_seminars           'red'
    color_nonactive_lessons  'red'
  end
  factory :setting do
    beginning_of_work         '2:00'
    end_of_work               '08:00'
    time_home_to_work         '999'
    time_work_to_univer       '1'
    time_univer_to_home       '55'
    min_work_time             '112'
  end
  factory :schedule do
    id_of_week            '1'
    weekday               'Пятница'
    start_time_class      '08:00'
    end_time_class        '09:35'
    name_of_subject       'СМпИМЭ'
    type_of_subject       'ПЗ'
    id_of_subgroup        '1'
    number_of_audience    'а.901-5к.'
    teacher               'Наганова Т. Е.'
    note                  "We're a company of pioneers."
  end
  factory :lesson do
    id_of_week         1
    weekday            'Пятница'
    start_time_class   '08:00'
    end_time_class     '09:35'
    name_of_subject    'СМпИМЭ'
    type_of_subject    'ПЗ'
    id_of_group        '442701'
    id_of_subgroup     '1'
    number_of_audience 'а.901-5к.'
    teacher            'Наганова Т. Е.'
    note               "We're a company of pioneers."
  end
end
