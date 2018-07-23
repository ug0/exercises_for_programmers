def valid_length(side)
  print "What is the #{side} of the ceiling in feet? "
  until (number = Float(gets.chomp) rescue false) && number > 0
    print "Please enter a positive number. "
  end
  number
end

def valid_room_type
  print "What is the type of the room, `round` or `rectangle`? "
  until (type = gets.chomp.downcase) == 'round' || type == 'rectangle'
    print "Only support room type: `round` or  `rectangle`. "
  end
  type
end

RATE = 350

room_type = valid_room_type
if room_type == 'round'
  diameter = valid_length('diameter')
  area_feet = Math::PI * (diameter / 2)**2
else
  length = valid_length('length')
  width = valid_length('width')
  area_feet = length * width
end

gallons_number = (area_feet / RATE).ceil

puts "Your room type is #{room_type}."
puts "You will need to purchase #{gallons_number} gallons of paint to cover #{area_feet.round(3)} square feet."
