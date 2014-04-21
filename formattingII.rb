#!/usr/bin/env ruby

def conditionals(m,y)
  if m < 1 || m > 12
  raise ArgumentError, "that's not a month dummy"
  else
    # calendar_body(m,y)
     print_header(m, y)
  end
#
# def year( y)
#     one_year = (1..12).to_a
#     years = (1800..2250)
#     print years
#     # if  y
# end

# endprint

def month_arg_to_s(m)
  month_array = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
  month_array[m - 1]
end

def print_header(m, y)
  header = "#{month_arg_to_s(m)}"+ " " +"#{y}"
  print header.center(20).rstrip + "\n" + "#{days}"
end

def days
  days = "Su Mo Tu We Th Fr Sa"
end

def individual_day_to_s(m, d) # h represents the first day number from zellers congruencefrom zellers cong
  h = find_weekday(m, d)
  days_of_the_week = ['Saturday','Sunday','Monday','Tuesday','Wednesday','Thursday','Friday']
  days_of_the_week[h]
end



 def ifleap
   if @year%4 == 0 && @year%100 == 0 && @year%400 == 0
     [31,29,31,30,31,30,31,31,30,31,30,31]
  else
    [31,28,31,30,31,30,31,31,30,31,30,31]
  end
end

def calendar_body(m, y)
  # puts  find_weekday(m.to_s ,y.to_s)
  # # m = conditionals(m,y)
  # # index_of_first_day = [18, 0,  3, 6, 9, 12, 15]
  # #print index_of_first_day[first_day.to_i]
end
# months_with_31_days = [nil,1,3,5,7,8,10,12]
# months_with_30_days = [4,6,9,11]
#
# if months_with_31_days.include? month
#   print long_months(month, year, h)
# else
#   print short_months(month, year, h)
# end

# def long_months(m,y, h)
#     days_of_month = "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 161 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31"
#    print days_of_month.center(20).rstrip
#  end
#
# def short_months(m,y, h)
#       # days_of_feb =(1...29)
#       days_of_feb = "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 161 17 18 19 20 21 22 23 24 25 26 27 28"
#       days_of_feb_leapyear = "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 161 17 18 19 20 21 22 23 24 25 26 27 28 29"
#       days_of_month = "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 161 17 18 19 20 21 22 23 24 25 26 27 28 29 30"
#       return days_of_feb if m ==  2
#       # return days_of_feb_leapyear if
#     else
#       days_of_month
#   #  print days_of_month.center(20).rstrip
# # end
#  end

 # def leap_year(m,y)

# when h = 0 days_of_month = "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 161 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31"
#   when h = 0 days_of_month = "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 161 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31"
#   when h = 0 days_of_month = "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 161 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31"
# end
# def print_month(m, y)
#   print_header(m, y),
#   days

end
