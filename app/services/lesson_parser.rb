require 'pry'
class LessonParser
  def parser(from_id, to_id)
    array_of_ids = (from_id..to_id).to_a
    array_of_ids.each do |counter|
      record_group = Group.find_by_id(counter.to_s)
      if record_group[:empty] == 'none'
        body_of_parser(record_group[:id_group_api])
      end
    end
  end

  private

  def body_of_parser(counter)
    link = "https://www.bsuir.by/schedule/rest/schedule/#{counter}"
    html = eat(link, timeout: 10)
    doc = Nokogiri::HTML(html)
    doc.css('schedulemodel').each do |showing|
      start_parser(showing)
    end
  end

  def start_parser(cut_doc)
    weekday = cut_doc.at_css('weekday').text
    cut_doc.css('schedule').each do |showing|
      weeknumber = showing.css('weeknumber').text
      if weeknumber[0] == '0'
        4.times do |elem|
          lesson_save(showing, elem + 1, weekday)
        end
      else
        weeknumber.split('').each { |elem| lesson_save(showing, elem, weekday) }
      end
    end
  end

  def lesson_save(showing, week, weekday)
    if showing.to_html.include? 'auditory'
      auditory = showing.at_css('auditory').text
    else
      auditory = '-'
    end

    if showing.to_html.include? 'employee'
      firstname  = showing.at_css('firstname').text
      lastname   = showing.at_css('lastname').text
      middlename = showing.at_css('middlename').text
      teacher = "#{lastname} #{firstname[0]}. #{middlename[0]}."
    else
      teacher = '-'
    end
    subject          = showing.at_css('subject').text
    lessontime       = interval_time(showing.at_css('lessontime').text)
    start_time_class = lessontime[0]
    end_time_class   = lessontime[1]
    lessontype       = showing.at_css('lessontype').text
    note             = showing.at_css('note').text
    numsubgroup      = showing.at_css('numsubgroup').text
    studentgroup     = showing.at_css('studentgroup').text

    record = Lesson.create id_of_week:         week,
                           weekday:            weekday,
                           start_time_class:   start_time_class,
                           end_time_class:     end_time_class,
                           name_of_subject:    subject,
                           type_of_subject:    lessontype,
                           id_of_group:        studentgroup,
                           id_of_subgroup:     numsubgroup,
                           number_of_audience: auditory,
                           teacher:            teacher,
                           note:               note
    record.save
  end

  def interval_time(value)
    value.split('-')
  end
end
