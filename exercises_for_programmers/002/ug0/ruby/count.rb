str = loop do
  print "What is the input string?"
  break str if !(str = gets.chomp).empty?
end
puts "#{str} has #{str.length} characters."