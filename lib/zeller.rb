def find_weekday(month, year)

  q = 1
  m = month
  k = year % 100
  j = year/100

  h = (q + ((13*(m+1)/5)) + k + (k/4) + (j/4) + (5*j)) % 7

end
#assert_equal 4, Zellers.calc(01, 01, 2014)
# 02 1800
# 02 2012
# 02 1803
# 03 2014
# 07 1800
# 12 2012 - 6 lines
# 02 2015 - 4 lines
# 03 2013 - starts on sunday
