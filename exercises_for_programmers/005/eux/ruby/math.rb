def valid_number
  until (number = Float(gets.chomp) rescue false) && number >= 0
    print "Must enter a positive number! "
  end
  number
end

def sum(a, b)
  a + b
end

def difference(a, b)
  a - b
end

def product(a, b)
  a * b
end

def quotient(a, b)
  a / b
end

print "What is the first number? "
x = valid_number
print "What is the second number? "
y = valid_number
print "#{x} + #{y} = #{sum(x, y)} \n#{x} - #{y} = #{difference(x, y)} \n#{x} * #{y} = #{product(x, y)} \n#{x} / #{y} = #{quotient(x, y)}"
