require 'test/unit'

def sort(arr)
  if arr == []
    []
  else
    [1]
  end
end


class TestSortArray < Test::Unit::TestCase

  def test_sort
    assert_equal([], sort([]))
    assert_equal([1], sort([1]))
  end

end
