# Space Complexity

This method takes an array of `names` as an input and prints a hi message for every name in the array.

```ruby
def greet(names)
  # O(1) space
  names.each do |name|
    puts "Hi, " + name
  end
end
```

In this method, we are declaring a loop variable `name`, which is independent of the size of the input. So, wether the input array has 10 or 1 million items, this method will only allocate some additional memory for the loop variable. So, it will take O(1) space.


Now, in the below example, we are duplicating `names` array and assigning it to a new variable called `copy`.

```ruby
def greet(names)
  # O(n) space
  copy = names.dup

  names.each do |name|
    puts "Hi, " + name
  end
end
```

This is in direct proportion to the size of the input array that's why it will take O(n) space.

**Note:** When we talk about space complexity, we only look at the additional space we should allocate relative to the size of the input. We always have the input of size `n` so we don't count it, we just analyze how much extra space we need to allocate for this algorithm.