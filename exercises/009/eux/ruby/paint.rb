def valid_length(side)
  print "What is the #{side} of the ceiling in feet? "
  until (number = Float(gets.chomp) rescue false) && number > 0
    print "Please enter a positive number. "
  end
  number
end

RATE = 350

length = valid_length('length')
width = valid_length('width')

area_feet = length * width
gallons_number = (area_feet / RATE).ceil

puts "You will need to purchase #{gallons_number} gallons of paint to cover #{area_feet.round(3)} square feet."
