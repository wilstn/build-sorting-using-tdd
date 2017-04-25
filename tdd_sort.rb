require 'test/unit'

def sort(arr)
  if arr == [] || arr.length == 1
    arr
  elsif arr[0] > arr[1]
    arr[0], arr[1] = arr[1], arr[0]
    arr
  else
    arr
  end
end


class TestSortArray < Test::Unit::TestCase

  def test_sort
    assert_equal([], sort([]))
    assert_equal([1], sort([1]))
    assert_equal([1,2], sort([2,1]))
    assert_equal([1,2,3], sort([1,2,3]))
    assert_equal([1,2,3], sort([2,1,3]))
  end

end
