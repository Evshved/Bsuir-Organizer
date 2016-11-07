require 'roo'
# work with dowloaded schedule
class Work
  def initialize
    @path = './Raspisanie_zanyatiy_dlya_studentov_BGUIR_242701.xlsx'
    @tablesheet = Roo::Spreadsheet.open(@path)
    @array_of_params = [@time, @subject, @type_of_subject, @number_of_subgroup,
                        @lecture_hall, @teacher, @note]
    (0..6).each do |elem|
      @hash_of_params = { elem + 1 => @array_of_params[elem] }
    end
    @number_of_hash_params = @hash_of_params.length
    @index_of_row = 4
    @max_index_of_row = @tablesheet.last_row
  end

  def body_of_parce(number_of_week)
    @number_of_week = number_of_week
    while @index_of_row < @max_index_of_row
      @check_week = @tablesheet.cell('B', @index_of_row)
      check
      @index_of_row += 1
    end
  end

  def check
    @counter_of_hash = 1
    if @check_week.to_s.include? @number_of_week.to_s
      ('C'..'I').each do |index_of_column|
        @hash_of_params[@counter_of_hash] =
          @tablesheet.cell(index_of_column, @index_of_row)
        @counter_of_hash += 1
      end
      output
    end
  end

  def output
    (1..@number_of_hash_params).each do |key_of_hash|
      puts(@hash_of_params[key_of_hash])
    end
  end
end
# job = Work.new
# puts("1 week  ===================","")
# job.body_of_parce("1")

# (1..4).each do |counter|
#   job = Work.new
#   puts(counter} week  ===================","")
#   job.body_of_parce(counter}")
# end
# Using gem "oga if you need web - XML"
# Oga.parse_xml(handle)
# parser.parse do |node|
#   parser.on(:text) do
#     puts node.text
#   end
# end
# def parsing(gobelen)
#   @gobelen = gobelen
#   puts (@gobelen)
# end
# def second_and_forth_weeks
#  if check_week == "2, 4"
#   time = tablesheet.cell('C', @counter)
#   subject = tablesheet.cell('D', @counter)
#   type_of_subject = tablesheet.cell('E', @counter)
#   number_of_subgroup = tablesheet.cell('F', @counter)
#   lecture_hall = tablesheet.cell('G', @counter)
#   teacher  = tablesheet.cell('H', @counter)
#   note = tablesheet.cell('I', @counter)
#   puts (" #{time}  #{subject} #{type_of_subject} #{number_of_subgroup}
#   #{lecture_hall} #{teacher} #{note}")
#  end
# end
