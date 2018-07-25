def valid_number
  until (number = Float(gets.chomp) rescue false) && number >= 0
    print "Please enter a positive number. "
  end
  number
end

def calculate_simple_interest(principal, rate, years)
  principal * (1 + rate / 100 * years)
end

def money_to_year(year)
  calculate_simple_interest(principal, rate, years)
end

print "Enter the principal: "
principal = valid_number
print "Enter the rate of interest: "
rate = valid_number
print "Enter the number of years: "
years = valid_number

1.upto(years) do |year|
  puts "After #{year} years at #{rate}%, the investment will be worth $#{calculate_simple_interest(principal, rate, year).round(2)}."
end
