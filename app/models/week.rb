class Week < ApplicationRecord
  validates_inclusion_of :number_of_week, in: 1..4
  validates :date, presence: true, week: true
end
