#write your code here

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(numbers)
  result = 0
  numbers.each do |i|
      result += i
    end
  result
end

def multiply(numbers)
  result = 1
  numbers.each do |i|
    result = result * i
  end
  result
end

def power(a, b)
  return a**b
end

def factorial(number)
  result = 1
  if number != 0
    (1..number).each do |i|
    result = result * i
    end
  else
  end
  result
end
