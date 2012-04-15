require "./util/better_integer"
require "test/unit"

class TestBetterInteger < Test::Unit::TestCase
  def test_simple
    assert_equal(120, 5.factorial)
    assert_equal(true, 17.is_prime)
    assert_equal(true, 97.is_circular_prime)
    assert_equal(101, 5.to_b)
    assert_equal(111, 7.to_b)
    assert_equal(100001, 33.to_b)
    assert_equal(true, 1234321.is_palindrome)
    assert_equal(false, 123432.is_palindrome)
    assert_equal(0, 0.to_b)
    assert_equal(true, 0.is_palindrome)
  end
end
