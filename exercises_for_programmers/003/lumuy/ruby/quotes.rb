puts 'what is the quote?'
puts 'Need enter quotes' while (saying = gets.chomp).empty?
puts 'Who said it?'
puts 'Need enter author' while (name = gets.chomp).empty?
puts "#{name} says, \"#{saying}\""
p "#{name} says, \"#{saying}\""
# print use  model.to_s then print to screen
# puts = print + \n
# p like puts, but use model.inspect
# here model is String
