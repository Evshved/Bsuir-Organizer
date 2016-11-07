class Color < ApplicationRecord
  belongs_to :user, optional: true
  validates :color_work, presence: true, color:true
  validates :color_labs, presence: true, color:true
  validates :color_lectures, presence: true, color:true
  validates :color_travel, presence: true, color:true
  validates :color_seminars, presence: true, color:true
  validates :color_nonactive_lessons, presence: true, color:true
end
