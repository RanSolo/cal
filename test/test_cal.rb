require 'test/unit'

class CalTest < MiniTest::Unit::TestCase

  def test_sample
    actual = `./cal`
    expected = "020202\n"
    assert_equal actual, expected
  end

end
