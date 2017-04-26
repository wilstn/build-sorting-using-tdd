require 'test/unit'

def sort(arr)
  return arr if arr == [] || arr.length == 1

  while not_sorted?(arr)
    (arr.length - 1).times do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
      end
    end
    print arr
    puts not_sorted?(arr)
  end
  arr
end

def not_sorted?(arr)
  arr.each_with_index do |value, index|
    if index == arr.length - 1
      break
    elsif arr[index + 1] > value
      next
    else
      return true
    end
  end

  return false
end


class TestSortArray < Test::Unit::TestCase

  def test_sort
    # assert_equal([], sort([]))
    # assert_equal([1], sort([1]))
    # assert_equal([1,2], sort([2,1]))
    # assert_equal([1,2,3], sort([1,2,3]))
    # assert_equal([1,2,3], sort([2,1,3]))
    # assert_equal([1,2,3], sort([1,3,2]))
    # assert_equal([1,2,3], sort([3,1,2]))
    assert_equal([1,2,3], sort([3,2,1]))
  end

end
