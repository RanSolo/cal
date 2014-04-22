#!/usr/bin/env ruby
class   Month
  attr_reader :m , :y

  def initialize(m, y)
    @m = m.to_i
    @y = y.to_i
  end
  def test
    "The month is : #{@m} and the year is #{@y}"
  end

  def month_arg_to_s
    month_array = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    month_array[@m - 1]
  end

  def print_header
    days = "Su Mo Tu We Th Fr Sa"
    header = "#{month_arg_to_s}"+ " " +"#{@y}"
    if @m < 1 || @m > 12
      raise ArgumentError, "that's not a month dummy"
    else
      print header.center(20).rstrip + "\n" + "#{days}\n"
      print_first_line
    end
  end

  def print_first_line
    first_day =  Zeller.find_weekday(@m ,@y)
    index_of_first_day = [18, 0, 3, 6, 9, 12, 15]
    line_no =  index_of_first_day[first_day.to_i]
    line_no.times {print "\s"}
    counter = line_no
    first_line = (21 - line_no)/3

    for num in 1..first_line
      print " ", num, " "
     num += 1
     num_next = num
     counter +=1
    end
    print "\n"
    calendar_body(num_next)
  end

  def calendar_body(num_next)
    counter = 0
    num_months = self.ifleap
    for num in num_next..num_months[@m - 1]
      if counter < 7
        if num < 10
          print " ", num, " "
          num += 1
          counter +=1
        else
          print num, " "
          counter +=1
          num += 1
        end
      else
        if num < 10
        print "\n", " ", num, " "
        counter = 1
        else
        print "\n", num, " "
        counter = 1
        end
      end
    end
  end

   def self.ifleap
     if @y%4 == 0 && @y%100 == 0 && @y%400 == 0
       [31,29,31,30,31,30,31,31,30,31,30,31]
    else
      [31,28,31,30,31,30,31,31,30,31,30,31]
    end
  end

  # def conditionals
  #
  #     # calendar_body(@m,@y)
  #      print_header
  #   end
  # end
end
