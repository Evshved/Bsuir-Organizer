eclass WeekParser
  def parser
    date = Time.now
    p "date - #{date}"
    4700.times do
      perform = date.strftime('%d.%m.%Y')
      link = "https://www.bsuir.by/schedule/rest/currentWeek/date/#{perform}"
      week = eat(link, timeout: 10)
      b = Week.new date: perform, number_of_week: week
      b.save
      date += 864_00
    end
  end
end
