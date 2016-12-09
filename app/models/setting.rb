class Setting < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id', optional: true

  validates :beginning_of_work,   presence: true, setting: true
  validates :end_of_work,         presence: true, setting: true
  validates :time_home_to_work,   presence: true, setting: true
  validates :time_work_to_univer, presence: true, setting: true
  validates :time_univer_to_home, presence: true, setting: true
  validates :min_work_time,       presence: true, setting: true
end
