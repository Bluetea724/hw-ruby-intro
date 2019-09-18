# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)

end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.any?
    #Find two maximum number of array, then sum it
    arr.max(2).reduce(:+)
  else
    return 0
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  
  if arr.length > 1
    #Find all combination for array, then sum it each value of combination
    arr.combination(2).each do |i|
      result = i[0] + i[1]
      if result == n
        return true
      end
    end
    return false
  elsif arr.length ==1
    return false
  else
    return false
  end
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  hellostr = "Hello, "
  hellostr << name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length ==0
    return false
  end
  
  #Check whether first character of s string is consonant or not
  if s[0] =~ /\A(?=[^aeiou])(?=[a-z])/i
    puts "'#{s}' is not a consonant"
    return true
  else
    puts "'#{s}' is a consonant"
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  # return false if s length is 0
  if s.length ==0
    return false
  end
  
  #Check there is any other number or character except 0,1
  if s =~ /[^01]/
    return false
  else
  #Transfer to 2's number, then calculate
    if s.to_i(2) % 4 == 0
      return true
    else
      return false
    end
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  #Modify isbn, price value
  attr_accessor :isbn, :price

  def initialize isbn, price
    #Exception handling if isbn is empty or price is 0 or negative value
    raise ArgumentError.new("Exception") if isbn.empty? || price <= 0
  
    @isbn = isbn
    @price = price
  end

  def price_as_string
    #Put currency
    format("$%.2f", @price)
  end

end
