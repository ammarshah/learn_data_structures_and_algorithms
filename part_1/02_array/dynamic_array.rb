# Objectives:
#
# Create a class called `DynamicArray` and implement the following functionality to it:
#
# 1. Add a constructor which takes a length input and should initialize an empty array object of that length.
# 2. Add `insert` method takes an item input and add it at the end of the array.
# 3. Add `print` method to print its content.
# 4. Add `remove_at` method that takes an index input and remove the item at that index.
# 5. Add `index_of` method that takes an item input and returns the index of its first occurrence. If the item doesn't exist, it should return -1.

class DynamicArray
  # For the exercise purposes, this class is treating Ruby's built-in `Array` as static arrays
  attr_accessor :array, :total_items

  def initialize(length)
    @array = Array.new(length)
    @total_items = 0
  end

  def insert(item)
    # O(n)
    if self.total_items == self.array.length
      new_array = Array.new(self.array.length * 2)
      
      self.total_items.times do |index|
        new_array[index] = self.array[index]
      end
      
      self.array = new_array
    end

    self.array[self.total_items] = item
    self.total_items += 1
  end

  def remove_at(index)
    # O(n)
    raise ArgumentError if index < 0 || index >= total_items

    (index..self.total_items - 1).each do |indx|
      self.array[indx] = self.array[indx + 1]
    end

    self.total_items -= 1
  end

  def index_of(item)
    # O(n)
    self.total_items.times do |index|
      return index if self.array[index] == item
    end

    return -1
  end

  def print
    # O(n)
    total_items.times { |index| puts array[index] }
  end
end

arr = DynamicArray.new(3)
arr.insert 10
arr.insert 20
arr.insert 30
arr.insert 40
arr.remove_at 1
p arr.index_of 10
arr.print
p arr.inspect
