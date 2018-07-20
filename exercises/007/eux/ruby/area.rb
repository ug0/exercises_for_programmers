def valid_length(side)
  print "What is the #{side} of the room in feet? "
  until (number = Float(gets.chomp) rescue false) && number > 0
    print "Please enter a positive number. "
  end
  number
end

FACTOR = 0.09290304

length = valid_length('length')
width = valid_length('width')

area_feet = length * width
area_meters = area_feet * FACTOR

puts "You entered dimensions of #{length} feet by #{width} feet."
puts "The area is"
puts "#{area_feet.round(3)} square feet"
puts "#{area_meters.round(3)} square meters"
