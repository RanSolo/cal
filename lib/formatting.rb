#!/usr/bin/env ruby
class Zeller
  attr_reader :m , :y

  def initialize(m, y)
    @m = m.to_i
    @y = y.to_i
  end
  def test
    "The month is : #{@m} and the year is #{@y}"
  end

  def conditionals
    if @m < 1 || @m > 12
    raise ArgumentError, "that's not a month dummy"
    else
      # calendar_body(@m,@y)
       print_header
    end
  end

  def month_arg_to_s
    month_array = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    month_array[@m - 1]
  end

  def print_header
    days = "Su Mo Tu We Th Fr Sa"
    header = "#{month_arg_to_s}"+ " " +"#{@y}"
    print header.center(20).rstrip + "\n" + "#{days}\n"
    calendar_body
  end

  def calendar_body
    first_day =  find_weekday(@m ,@y)
    # line_length = 21
    # @m = conditionals(@m,@y)
    index_of_first_day = [18, 0,  3, 6, 9, 12, 15]
    line_no =  index_of_first_day[first_day.to_i]
    line_no.times {print "\s"}
    line_counter = 1
    first_line = line_no + line_counter
    num_months = ifleap

    # case line_counter
    for num in 1..num_months[@m - 1]
      until line_counter == 5
        if num < 10
        print " ", num, " "
        num += 1
      else
        print num, "  "
        line_counter +=1
        num += 1
      end
    # when line_counter === line_no
  end
print "\n"

  line_counter = 0
end
line_counter = 0

end

  def print_first_line

  end

   def ifleap
     if @y%4 == 0 && @y%100 == 0 && @y%400 == 0
       [31,29,31,30,31,30,31,31,30,31,30,31]
    else
      [31,28,31,30,31,30,31,31,30,31,30,31]
    end
  end
end
