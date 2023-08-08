numbers = [1, 2, 3, 4, 5]
names = ['Alice', 'Bob', 'Cindy', 'David', 'Emma']

def log(numbers)
  # O(n)
  numbers.each do |num|
    puts num
  end
end
log(numbers) # Linear time complexity i.e. O(n) where n is the size of the input

# If the numbers array has one million elements, adding two extra operations
# doesn't really have a significant impact on the cost of the algorithm
# so we can simplify it to just O(n)
def multiple_logs(numbers)
  # O(1 + n + 1) > O(2 + n) > O(n)
  puts numbers[0] # O(1)
  numbers.each do |num| # O(n)
    puts num
  end
  puts numbers[0] # O(1)
end
multiple_logs(numbers) # Linear time complexity i.e. O(n) where n is the size of the input

def multiple_logs2(numbers)
  # O(n + n) > O(2n) > O(n)
  numbers.each do |num| # O(n)
    puts num
  end

  numbers.each do |num| # O(n)
    puts num
  end
end
multiple_logs2(numbers) # Linear time complexity i.e. O(n) where n is the size of the input

# Even if we have muliple parameters, the runtime complexity increases linearly
def multiple_parameters(numbers, names)
  # O(n + m) > O(n)
  numbers.each do |num| # O(n)
    puts num
  end

  names.each do |name| # O(m)
    puts name
  end
end
multiple_parameters(numbers, names) # Linear time complexity i.e. O(n) where n is the size of the input