require 'pry'
class ScheduleParser
  def initialize(user)
    @current_user  = user
    @current_group = user.number_of_group
    @settings = Setting.find_by user_id: @current_user.id
    @begin_of_work       = @settings[:beginning_of_work]
    @end_of_work         = @settings[:end_of_work]
    @home_to_work        = @settings[:time_home_to_work ]
    @univer_to_home      = @settings[:time_univer_to_home]
    @work_to_univer      = @settings[:time_work_to_univer]
    @min_work_time       = @settings[:min_work_time]
  end

  def new_schedule
    @begin_minutes = ParseData::counting_minutes(@begin_of_work)
    @end_minutes   = ParseData::counting_minutes(@end_of_work)
    @hash_of_params = InputData::get_hash_params(@begin_minutes,
                                                 @end_minutes,
                                                 @min_work_time,
                                                 @work_to_univer,
                                                 @univer_to_home,
                                                 @home_to_work)
    InputData::WEEKS.each do |week|
      InputData::WEEK_DAYS.each do |day|
        InputData::SUB_GROUP.each do |sub_group|
          lessons = InputData::get_lessons(week, day, @current_group, sub_group)
          array_of_lessons = ParseData::convert_lessons(lessons)
          schedule = ParseData::create_schedule_from_lessons(array_of_lessons,
                                                             @hash_of_params)
        end
      end
    end
  end

  def edit_schedule(setting_ex, schedule_ex)

  end
end


# Settings:
#  :beginning_of_work
#  :end_of_work
#  :time_home_to_work
#  :time_work_to_univer
#  :time_univer_to_home
#  :min_work_time
# Lesson:
#  :id_of_week
#  :weekday
#  :start_time_class
#  :end_time_class
#  :name_of_subject
#  :type_of_subject
#  :id_of_subgroup
#  :id_of_group
#  :number_of_audience
#  :note
#  :teacher
# Schedule:
#  active
#  id_some ; ; ;;
0
