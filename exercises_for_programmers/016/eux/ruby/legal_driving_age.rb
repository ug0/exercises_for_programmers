def valid_age
  until (age = Integer(gets.chomp) rescue false) && age > 0 && age < 200
    print "Please enter a positive integer(1 ~ 199). "
  end
  age
end

LEGAL_AGES = {
  'China' => 18,
  'The US' => 16,
  'Japan' => 18,
}

print "What is your age? "
get_age = valid_age

LEGAL_AGES.each do |country, age|
  puts get_age < age ? "You are not old enough to legally drive in #{country}." : "You are old enough to legally drive in #{country}."
end
