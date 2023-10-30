#write your code here

def add(a, b)
  return a + b
end

def subtract(a, b)
  return a - b
end

def sum(numbers)
  result = 0
  for i in numbers
      result = result + i
    end
  return result
end


def multiply(numbers)
  result = 1
  for i in numbers
        result = result * i
        end
  return result
end


def power(a, b)
  return a**b
end



def factorial(number)
  result = 1
  if number != 0
  for i in 1..number
    result = result * i
  end
  else
  end
  return result
end
  

