#!/usr/bin/env ruby

def month_arg_to_s(m)
  month_array = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
  month_array[m - 1]
end

def print_header(m, y)
  header = "#{month_arg_to_s(m)}"+ " " +"#{y}"
  print header.center(20).rstrip + "\n" + "#{days}"
end

def days
  days = "Mo Tu We Th Fr Sa Su"
  days.center(20).rstrip
end

def individual_day_to_s(h) # h represents the first day number from zellers congruencefrom zellers cong
  days_of_the_week = ['Saturday','Sunday','Monday','Tuesday','Wednesday','Thursday','Friday']
  days_of_the_week[h]
end

# def print_month(m, y)
#   print_header(m, y)
#   days
#
# end
