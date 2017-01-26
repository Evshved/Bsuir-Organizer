module InputData
  WEEKS = (1..4)
  WEEK_DAYS = ['Понедельник', 'Вторник', 'Среда','Четверг','Пятница','Суббота']
  SUB_GROUP = (1..2)
  DAY_IN_MINUTES = 1440
  def InputData::get_lessons(week, weekday, current_group, sub_group)
    first_part = Lesson.where(id_of_group:    current_group,
                              id_of_subgroup: sub_group,
                              id_of_week:     week,
                              weekday:        weekday
                              )
    second_part = Lesson.where(id_of_group:    current_group,
                              id_of_subgroup:  0,
                              id_of_week:      week,
                              weekday:         weekday
                              )
    first_part.or(second_part)
  end

  def InputData::get_hash_params(begin_minutes,
                                 end_minutes,
                                 min_work_time,
                                 work_to_univer,
                                 univer_to_home,
                                 home_to_work)
    {begin_minutes: begin_minutes,
     end_minutes: end_minutes,
     min_work_time: min_work_time,
     work_to_univer: work_to_univer,
     univer_to_home: univer_to_home,
     home_to_work: home_to_work}
  end
end
0
