
class Year
  attr_reader :y
  def initialize(y)
    @y = y.to_i
  end

  def year_header
    i = 0
    month_array = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    days = "Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa"
      if @y < 1800 || @y > 3000
        raise ArgumentError, "not covered"
      else
        print @y.to_s.center(63) + "\n"
        until i > 3
          print month_array[0].center(20) + "  " +month_array[1].center(20)+"  " +month_array[2].center(20)+ "\n" + "#{days}\n"
          month_array = month_array.drop(3)
          print_first_line
          i += 1
        end
      end
    end

  def print_first_line

    first_day = Zeller.find_weekday(1, @y)
    print first_day
  end

    # def print_first_line
    #   first_day =  Zeller.find_weekday(@m ,@y)
    #   index_of_first_day = [18, 0, 3, 6, 9, 12, 15]
    #   line_no =  index_of_first_day[first_day.to_i]
    #   line_no.times {print "\s"}
    #   counter = line_no
    #   first_line = (21 - line_no)/3
    #
    #   for num in 1..first_line
    #     print " ", num, " "
    #    num += 1
    #    num_next = num
    #    counter +=1
    #   end
    #   print "\n"
    #   calendar_body(num_next)
    # end


    # month_array["April", "May", "June", "July", "August", "September", "October", "November", "December"]
  #
  #   month_array = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
  #   # for num in month_array
  #   print_header
  #   # i =+ 1
  # # end
  # end
end
