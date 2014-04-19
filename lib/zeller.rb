#!/usr/bin/env ruby

  

  def find_weekday(m, y)
    q = 1 #day of the week
    if m < 3 #if it is month 1 or 2 then do stuff below
       y = y - 1 #acounts for ZC's requirement that months 1,2 be counted in the previous year
       m = m + 12 #acounts for ZC's requirement that months 1,2 be counted as months 13, 14 of the previous year
    end
    k = y % 100 #year
    j = y/100 #century
#VVVVVVVVVV-----ZELLERS CONGRUENCE------VVVVVVVVVV
    h = (q + ((13*(m+1)/5)) + k + (k/4) + (j/4) + (5*j)) % 7
  end
