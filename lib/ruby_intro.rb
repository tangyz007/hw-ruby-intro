# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  return 0 if arr.empty? == true
  return arr[0] if arr.size == 1
  def sum arr
    return arr.inject(0, :+)
  end
  return sum(arr.max(2))
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.empty? == true
  return false if arr.size == 1
  hash = {}
  array = []
  arr.each_with_index do |value,index|
    y = n - value
    if(hash.find{|key,val| key == value})
      array << hash[value]
      array << index
      return true
    else
      hash[y] = index
    end
    
end
return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, ".concat(name)
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return false if s.empty? == true
	return false if (s[0] =~ /\w/) == nil
	return false if (s[0] =~ /\D/) == nil
	return false if s.start_with?("A","E","I","O","U","a","e","i","o","u") == true
	
	return true
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if s.empty? == true
	return false if (s =~ /\D/) != nil
	return false if (s =~ /2/) != nil
	return false if (s =~ /3/) != nil
	return false if (s =~ /4/) != nil
	return false if (s =~ /5/) != nil
	return false if (s =~ /6/) != nil
	return false if (s =~ /7/) != nil
	return false if (s =~ /8/) != nil
	return false if (s =~ /9/) != nil
	return true if s == '0'
	return false if s.end_with?("100") == false
	return true
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_reader :isbn, :price #creates getters
  
  def initialize(isbn_i,price_i) #constructor
    self.isbn=(isbn_i)
    self.price=(price_i)
  end
  
  #setter
  def isbn=(isbn_i)
    if !(isbn_i.is_a? String)
      raise ArgumentError.new('Not a String!!!')
    elsif isbn_i.length < 1 
      raise ArgumentError.new('ISBN is empty!!!')
    else
      @isbn = isbn_i 
    end
  end
  
  def price=(price)
    if price <= 0
      raise ArgumentError.new('Price Error!!!')
    end
    @price = price
  end
  def price
    @price
  end
  
  def price_as_string
    "$#{@price.round(2)}" #round to 2 digits
  	sprintf("$%#.2f", @price)
  end
end
