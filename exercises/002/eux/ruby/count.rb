puts 'What is the input string?'
puts 'Must enter something!' while (input = gets.chomp).empty?
puts "#{input} has #{input.size} characters."
