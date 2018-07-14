def count
  p 'What is the input string?'
  p "#{input = yield} has #{input.size} characters."
end

count do
  p 'Must enter something!' while (input = gets.chomp).size == 0
  input
end
