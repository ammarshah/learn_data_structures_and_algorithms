numbers = [1, 2, 3, 4, 5]

def print_all_combinations(numbers)
  # O(n * n) or O(n ^ 2)
  numbers.each do |first| # O(n)
    numbers.each do |second| # O(n)
      puts "#{first}, #{second}"
    end
  end
end
print_all_combinations(numbers) # Quadratic time complexity i.e. O(n ^ 2) where n is the size of the input

# The square of a number is always greater than the number itself
# so we can simplify it by dropping the n from the first loop
def print_all_combinations2(numbers)
  # O(n + n ^ 2) > O(n ^ 2)
  numbers.each do |num| # O(n)
    puts num
  end

  numbers.each do |first| # O(n)
    numbers.each do |second| # O(n)
      puts "#{first}, #{second}"
    end
  end
end
print_all_combinations2(numbers) # Quadratic time complexity i.e. O(n ^ 2) where n is the size of the input

# This algorithm is far slower than the algorithm with O(n ^ 2) time complexity
def print_three_digits_combinations(numbers)
  # O(n ^ 3)
  numbers.each do |first| # O(n)
    numbers.each do |second| # O(n)
      numbers.each do |third| # O(n)
        puts "#{first}, #{second}, #{third}"
      end
    end
  end
end
print_three_digits_combinations(numbers) # Quadratic time complexity i.e. O(n ^ 3) where n is the size of the input
