puts 'What is the quote?'
puts 'Must enter the quote!' while (quote = gets.chomp).empty?
puts 'Who said it?'
puts 'Must enter the author!' while (author = gets.chomp).empty?
puts  author + ' says, ' + "\"" + quote + "\""
