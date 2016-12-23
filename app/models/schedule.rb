class Schedule < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id', optional: true

  validates :id_of_week, length: { is: 1 }
  validates :weekday, length: { minimum: 3, maximum: 12 }
  validates :start_time_class, presence: true, schedule: true
  validates :end_time_class,   presence: true, schedule: true
  validates :name_of_subject, length: { minimum: 2, maximum: 15 }
  validates :type_of_subject, length: { maximum: 2 }
  validates :id_of_subgroup, length: { is: 1 }
  validates :number_of_audience, length: { maximum: 11 }
  validates :note, length: { maximum: 65 }
  validates :teacher, length: { minimum: 3, maximum: 65 }
end
