def valid_age
  until (number = Integer(gets.chomp) rescue false) && number > 0 && number < 200
    print "Please enter a positive integer between 1 and 199. "
  end
  number
end

print "What is your current age? "
current_age = valid_age
print "At what age would you like to retire? "
retirement_age = valid_age

remain_year = retirement_age - current_age
current_year = Time.now.year
retirement_year = current_year + remain_year

if remain_year > 0
  puts "You have #{remain_year} years left until you can retire."
  puts "It's #{current_year}, so you can retire in #{retirement_year}."
else
  puts "It's #{current_year}, so you already retired in #{retirement_year}"
end
