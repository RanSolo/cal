require 'formatting'
require 'test/unit'

class FormattingTest <Test::Unit::TestCase

  # def test_conditionals_m_O_year_ok
  #   con = conditionals(0, 2012)
  #    assert_equal con, "ArgumentError: that's not a month dummy"
  # end
  # 
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
    day = individual_day_to_s(01, 2012)
    assert_equal "Sunday", day
  end

  def print_header
    header = print_header(4, 2014)
    assert_equal "April 2014", header
  end

  def test_individual_day_to_s
      day = individual_day_to_s(4, 2012)
      assert_equal "Sunday", day
  end
end
# def test_find_weekday
#   h = find_weekday(4, 2014)
#   assert_equal 3, h
# end
