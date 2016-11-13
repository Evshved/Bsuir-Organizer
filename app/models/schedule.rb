class Schedule < ApplicationRecord
  belongs_to :user
  validates :teacher, presence: true, teacher: true
  validates :schedule, presence: true, teacher: true
  validates :id_of_week, presence: true, id_of_week: true
  validates :weekday, presence: true, weekday: true
end
