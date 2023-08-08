numbers = [1, 2, 3, 4, 5]

def log(numbers)
  # O(1)
  puts numbers[0]
end
log(numbers) # Constant time complexity i.e. O(1)

# Even if we have multiple puts statements, we can still simplify it to O(1) like below:
def log_twice(numbers)
  # O(1 + 1) > O(2) > O(1)
  puts numbers[0] # O(1)
  puts numbers[0] # O(1)
end
log_twice(numbers) # Constant time complexity i.e. O(1)
