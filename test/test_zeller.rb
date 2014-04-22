require 'zeller'
require 'test/unit'

class ZellerTest < MiniTest::Unit::TestCase

  def test_find_weekday
    h = Zeller.find_weekday(4, 2014)
    assert_equal 3, h
  end

  def test_02_1800
    h = Zeller.find_weekday(02, 1800)
    assert_equal 0,  h
  end

  def test_02_2012
    h = Zeller.find_weekday(2, 2012)
    assert_equal 4, h
  end

  def test_02_1803
    h = Zeller.find_weekday(2, 1803)
    assert_equal 3, h
  end

  def test_leap_year
    h = Zeller.find_weekday(3, 2012)
    assert_equal 5, h
  end
end
