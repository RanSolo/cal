require 'zeller'
require 'test/unit'

class ZellerTest < MiniTest::Unit::TestCase

  def test_find_weekday
    h = find_weekday(4, 2014)
    assert (3 === h)
  end

  def test_02_1800
    h = find_weekday(14, 1799)
    assert_equal 0,  h
  end

   def test_02_2012
     h = find_weekday(14, 2011)
     assert_equal 4, h
   end

   def test_02_1803
     h = find_weekday(14, 1802)
     assert_equal 3, h
   end

   def test_leap_year
     h = find_weekday(3, 2012)
     assert_equal 5, h
   end


end
