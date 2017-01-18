class GroupParser
  def parser
    doc = doc_parser
    doc.css('studentgroup').each do |showing|
      apinumber = showing.at_css('id').text
      gnumber = showing.at_css('name').text
      empty = parse_empty(apinumber)
      record = Group.create number_of_group: gnumber,
                            id_group_api: apinumber,
                            empty: empty
      record.save
    end
  end

  private

  def doc_parser
    link = 'https://www.bsuir.by/schedule/rest/studentGroup'
    html = eat(link, timeout: 10)
    Nokogiri::HTML(html)
  end

  def parse_empty(apinumber)
    link = "https://www.bsuir.by/schedule/rest/schedule/#{apinumber}"
    html = eat(link, timeout: 10)
    doc = Nokogiri::HTML(html)
    if doc.css('schedulemodel').text == ''
      'true'
    else
      'none'
    end
  end
end
