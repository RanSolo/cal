#!/usr/bin/env ruby

def conditionals(m,y)
  if m < 1 || m > 12
  raise ArgumentError, "that's not a month dummy"
  else
    # calendar_body(m,y)
     print_header(m, y)
  end

end

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

def individual_day_to_s(m, d) # h represents the first day number from zellers congruencefrom zellers cong
  h = find_weekday(m, d)
  days_of_the_week = ['Saturday','Sunday','Monday','Tuesday','Wednesday','Thursday','Friday']
  days_of_the_week[h]
end

def calendar_body(m, y)
  month = m
  year = y
  h = find_weekday(m ,y)
  m = conditionals(m,y)
  months_with_31_days = [nil,1,3,5,7,8,10,12]
  months_with_30_days = [4,6,9,11]

  if months_with_31_days.include? month
    print long_months(month, year, h)
  else
    print short_months(month, year, h)
  end
end



def long_months(m,y, h)
    days_of_month = "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 161 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31"
   print days_of_month.center(20).rstrip
 end

def short_months(m,y, h)
      days_of_feb = "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 161 17 18 19 20 21 22 23 24 25 26 27 28"
      days_of_month = "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 161 17 18 19 20 21 22 23 24 25 26 27 28 29 30"
      return days_of_feb if m ==  2
    else
      days_of_month
  #  print days_of_month.center(20).rstrip
 end

 def leap_year(m,y)

# when h = 0 days_of_month = "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 161 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31"
#   when h = 0 days_of_month = "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 161 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31"
#   when h = 0 days_of_month = "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 161 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31"
# end
# def print_month(m, y)
#   print_header(m, y),
#   days

# end
