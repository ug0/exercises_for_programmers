def valid_number
  until (number = Float(gets.chomp) rescue false) && number >= 0
    print "Please enter a positive number. "
  end
  number
end

def calculate_compound_interest(principal, rate, years, times)
  principal * (1 + rate / 100 / times) ** (times * years)
end

print "What is the principal amount? "
principal = valid_number
print "What is the rate? "
rate = valid_number
print "What is the number of years? "
years = valid_number
print "What is the number of times the interest is compounded per year? "
times = valid_number

amount = calculate_compound_interest(principal, rate, years, times)

print "$#{principal} invested at #{rate}% for #{years} years compounded #{times} times per year is $#{amount.round(2)}."
