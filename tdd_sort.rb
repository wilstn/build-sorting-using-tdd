require 'test/unit'

def sort(arr)
  []
end


class TestSimpleNumber < Test::Unit::TestCase

  def test_simple
    assert_equal([], sort([]))
  end
  
end
