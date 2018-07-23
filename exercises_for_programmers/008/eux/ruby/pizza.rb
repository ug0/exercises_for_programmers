def valid_number
  until (number = Integer(gets.chomp) rescue false) && number > 0
    print "Please enter a positive integer. "
  end
  number
end

print "How many people? "
people_number = valid_number
print "How many pizzas do you have? "
pizzas_number = valid_number
print "How many pieces a pizza have? "
pieces_number_per_pizza = valid_number

total_pieces_number = pizzas_number * pieces_number_per_pizza
pieces_number_each_person = (total_pieces_number / people_number).ceil
pieces_number_leftover = total_pieces_number - pieces_number_each_person * people_number

puts "#{people_number} people with #{pizzas_number} pizzas"
puts "Each person gets #{pieces_number_each_person} pieces of pizza."
puts "There are #{pieces_number_leftover} leftover pieces."
