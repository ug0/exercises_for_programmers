puts 'What is the input string?'
puts 'Must enter something!' while (input = gets.chomp).empty? == 0
puts "#{input} has #{input.size} characters."
