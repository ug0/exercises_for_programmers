def valid_number
  until (number = Float(gets.chomp) rescue false) && number > 0
    print "Please enter a positive number. "
  end
  number
end

def tax(state, amount)
  tax_rate = %w[i illinois].include?(state) ? 8 : 5
  amount * tax_rate / 100
end

def additional_tax(county, amount)
  additional_rate = county == 'dunn' ? 0.0004 : 0.0005
  amount * additional_rate
end

print "What is the order amount? "
amount = valid_number
print "What state do you live in? "
print "Please enter a state. " while (state = gets.chomp.downcase).empty?

tax = 0
if %w[w wisconsin].include?(state)
  print "What county do you live in? "
  print "Please enter a county. " while (county = gets.chomp.downcase).empty?
  tax = tax(state, amount) + additional_tax(county, amount)
elsif %w[i illinois].include?(state)
  tax = tax(state, amount)
end
total = amount + tax

puts "The tax is $#{tax.round(2)}." if tax > 0
puts "The total is $#{total.round(2)}."
