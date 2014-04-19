require 'formatting'
require 'test/unit'

class FormattingTest < MiniTest::Unit::TestCase

  def test_month_arg_to_text
    m = month_arg_to_s(1)
    assert_equal "January", m
  end

  def test_month_arg_to_text_double_figures
    m = month_arg_to_s(12)
    assert_equal "December", m
  end

  def test_days
    assert days = "Mo Tu We Th Fr Sa Su"
  end

  def test_Saturday_l_day_to_s
    day = individual_day_to_s(0)
    assert_equal "Saturday", day
  end

  def print_header
    header = print_header(4, 2014)
    assert_equal "April 2014", header
  end

end
# def test_find_weekday
#   h = find_weekday(4, 2014)
#   assert_equal 3, h
# end
