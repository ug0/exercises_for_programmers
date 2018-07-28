def valid_number
  until (number = Float(gets.chomp) rescue false) && number >= 0
    print "Please enter a positive number. "
  end
  number
end

def valid_state
  until !(state = gets.chomp.downcase).empty? && STATES.include?(state)
    print "Only support states: WI/Wisconsin or MN/Minnesota. "
  end
  state
end

STATES = ['wi', 'wisconsin', 'mn', 'minnesota']

print "What is the order amount? "
order_amount = valid_number
print "What is the state? "
state = valid_state

total_amount = order_amount

if state == 'wi' || state == 'wisconsin'
  tax_amount = order_amount * 5.5 / 100
  total_amount = order_amount + tax_amount
  puts "The subtotal is $#{order_amount.round(2)}."
  puts "The tax is $#{tax_amount.round(2)}."
end

print "The total is $#{total_amount.round(2)}"
