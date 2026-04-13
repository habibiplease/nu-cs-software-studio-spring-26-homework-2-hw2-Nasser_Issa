# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce(0, :+)
end

def max_2_sum arr
  return 0 if arr.empty?
  return arr[0] if arr.length == 1

  sorted = arr.sort
  sorted[-1] + sorted[-2]
end

def sum_to_n? arr, n
  return false if arr.length < 2

  seen = {}
  arr.each do |x|
    return true if seen.key?(n - x)
    seen[x] = true
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  !!(/\A[bcdfghjklmnpqrstvwxyz]/i.match(s))
end

def binary_multiple_of_4? s
  return false unless /\A[01]+\z/.match?(s)
  return true if /\A0+\z/.match?(s)

  s.end_with?('00')
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn == '' || price <= 0

    @isbn = isbn
    @price = price
  end

  def price_as_string
    format('$%.2f', @price)
  end
end
