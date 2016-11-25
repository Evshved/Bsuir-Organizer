class Setting < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id', optional: true

  validates :beginning_of_work, presence: true, setting:true
  validates :end_of_work,       presence: true, setting:true

  validates :time_home_to_work,   length: { in: 1..3 }
  validates :time_work_to_univer, length: { in: 1..3 }
  validates :time_univer_to_home, length: { in: 1..3 }
  validates :min_work_time,       length: { in: 1..3 }
end
