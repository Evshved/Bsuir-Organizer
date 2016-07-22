require 'rubygems'
require 'roo'


class Work
  @path = "./Raspisanie_zanyatiy_dlya_studentov_BGUIR_242701.xlsx"
  @tablesheet = Roo::Spreadsheet.open(@path)
  def second_and_forth_weeks
    @counter = 1
    @tablesheet = 39
    while @counter < @tablesheet do #.last_row
      @check_week = @tablesheet.cell('B', @counter)
      if @check_week == "1, 3"
        @time = tablesheet.cell('C', @counter)
        @subject = tablesheet.cell('D', @counter)
        @type_of_subject = tablesheet.cell('E', @counter)
        @number_of_subgroup = tablesheet.cell('F', @counter)
        @lecture_hall = tablesheet.cell('G', @counter)
        @teacher  = tablesheet.cell('H', @counter)
        @note = tablesheet.cell('I', @counter)
        puts (" #{@time}  #{@subject} #{@type_of_subject} #{@number_of_subgroup}
        #{@lecture_hall} #{@teacher} #{@note}")
      end
      @counter +=1
    end

  end
end


job = Work.new
puts("1&3 weeks")
job.second_and_forth_weeks


# Oga.parse_xml(handle)

# parser.parse do |node|
#   parser.on(:text) do
#     puts node.text
#   end
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
