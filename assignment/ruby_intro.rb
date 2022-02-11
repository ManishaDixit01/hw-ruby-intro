# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 0
    return false
  elsif arr.length==1
    return false
  else
    !!arr.combination(2).detect { |a, b| a + b == n }
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return 'Hello, '+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  /^[b-df-hj-np-tv-z]/i.match(s) != nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return true if s == "0"
	/^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
	attr_accessor :price
	def initialize(isbn, price)
		raise ArgumentError, 
			"Invalid argument either isbn is null or price<=0" if isbn.empty?  or price <= 0
		@isbn = isbn
		@price = price
	end

	def price_as_string
		sprintf("$%2.2f", @price)
	end
end
