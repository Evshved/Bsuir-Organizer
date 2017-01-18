require 'pry'
class SchedulesController < ApplicationController
  def index
    @date = date_parse
    @subgroup = 0..1
    if check_empty == true
      @schedules = Lesson.where(id_of_group: current_group,
                              id_of_week: @date,
                              id_of_subgroup: @subgroup
                              ).take(1000)
    else

    end
  end

  private
  def schedule_param

  end

  def date_parse
    date = Time.now.strftime('%d.%m.%Y')
    current_week = Week.find_by date: date
    current_week[:number_of_week]
  end

  def check_empty
    number = current_user.number_of_group
    check  = Group.find_by number_of_group: number
    check[:empty] == 'none' ? true : false
  end

  def current_group
    current_user.number_of_group
  end
end
