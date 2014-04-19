require 'zeller'
require 'test/unit'

class ZellerTest < MiniTest::Unit::TestCase

  def test_find_weekday
    h = find_weekday(4, 2014)
    assert_equal 3, h
  end

  def test_02_1800
    h = find_weekday(02, 1800)
    assert_equal 0,  h
  end

  def test_02_2012
    h = find_weekday(2, 2012)
    assert_equal 4, h
  end

  def test_02_1803
    h = find_weekday(2, 1803)
    assert_equal 3, h
  end

  def test_leap_year
    h = find_weekday(3, 2012)
    assert_equal 5, h
  end

  # def test_format_year_jan_or_feb
  #   y = format_year(2, 2011)
  #   assert_equal 2012, y
  # end
  #
  # def test_format_year_after_feb
  #   y = format_year(3, 2011)
  #   assert_equal 2011, y
  # end

  # def test_display_month
  #   m = display_month(13)
  #   assert_equal 1, m
  #   #  assert_equal
  # end
  #
  # def test_display_month_regular
  #   m = display_month(12)
  #   assert_equal 12, m
  #   #  assert
  # end

  # def test_week_row
  #
  # end
end
