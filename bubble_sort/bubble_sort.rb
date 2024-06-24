# frozen_string_literal: true

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false
    (n - 1).times do |i|
      array[i], array[i + 1], swapped = array[i + 1], array[i], true if array[i] > array[i + 1]
    end
    break unless swapped
  end
  array
end

print bubble_sort([4, 3, 78, 2, 0, 2])
