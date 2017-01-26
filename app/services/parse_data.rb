require 'pry'
module ParseData
  def ParseData::convert_lessons(lessons)
    array_of_lessons = Array.new
    lessons.each do |lesson|
      lesson_id = lesson[:id]
      start_class = ParseData::counting_minutes(lesson[:start_time_class])
      end_class   = ParseData::counting_minutes(lesson[:end_time_class])
      array_of_lessons << { id: lesson_id,
                            start_class: start_class,
                            end_class: end_class,
                            type_of_data: 'lesson'}
    end
    array_of_lessons
  end

  def ParseData::create_schedule_from_lessons(array_of_lessons,
                                              hash_of_params)
    ParseData::start_day(array_of_lessons, hash_of_params)
    ParseData::during_day
    ParseData::end_day
  end

  def ParseData::start_day(array_of_lessons, hash_of_params)
    lessons = array_of_lessons
    params  = hash_of_params
    binding.pry
    schedule = Array.new
    limit_start_work = lessons.first
    limit = limit_start_work[:start_class]
    # Начало работы, если пары начинаются позже работы.
    if params[:begin_minutes] < limit
      check = params[:begin_minutes] +
              params[:min_work_time] +
              params[:work_to_univer]
      trully = limit - check
      if trully > 0
        interval = params[:begin_minutes] - params[:home_to_work]
        true_interval = ParseData::check_trully(interval)
        schedule << {start_class:   true_interval,
                     end_class:     params[:begin_minutes],
                     type_of_data: 'home_to_work',
                     logic_id:      1}
        array_element = schedule[0]
        current_time = array_element[:end_class]
        end_interval = limit  - params[:work_to_univer] - params[:begin_minutes]
        schedule << {start_class:   params[:begin_minutes],
                     end_class:     end_interval + current_time,
                     type_of_data:  'work',
                     logic_id:      2}
        array_element = schedule[1]
        current_time = array_element[:end_class]
        schedule << {start_class:   current_time,
                     end_class:     limit,
                     type_of_data:  'work_to_univer',
                     logic_id:      3}
        current_time = limit
        end_for_first_lesson = limit_start_work[:end_class]
        schedule << {start_class:   current_time,
                     end_class:     end_for_first_lesson,
                     type_of_data: 'lesson',
                     logic_id:      4}
        current_time = end_for_first_lesson
      else
        schedule << {start_class:   limit - params[:univer_to_home],
                     end_class:     limit,
                     type_of_data: 'home_to_univer',
                     logic_id:      1}
        current_time = limit
        end_for_first_lesson = limit_start_work[:end_class]
        schedule << {start_class:   limit,
                     end_class:     end_for_first_lesson,
                     type_of_data: 'lesson',
                     logic_id:      2}
        current_time = end_for_first_lesson
      end

    else

    end
    binding.pry
    schedule
  end

  def ParseData::during_day

  end

  def ParseData::end_day

  end

  def ParseData::create_sample_schedule

  end

  def ParseData::counting_minutes(time)
    array_of_time = time.split(':')
    array_of_time[0].to_i * 60 + array_of_time[1].to_i
  end

  def ParseData::check_trully(time)
    if time < 0
      InputData::DAY_IN_MINUTES + time
    else
      if time > InputData::DAY_IN_MINUTES
        InputData::DAY_IN_MINUTES - time
      else
        time
      end
    end
  end
end
0
