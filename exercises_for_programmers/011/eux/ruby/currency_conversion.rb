def valid_number
  until (number = Float(gets.chomp) rescue false) && number >= 0
    print "Must enter a positive number! "
  end
  number
end

def valid_country
  countries = CONVERSIONS.keys
  until countries.include?(country = gets.chomp.capitalize)
    print "Only support countries: #{countries.join(', ')}. "
  end
  country
end

CONVERSIONS = {
  'China' => {
      rate: 7.96,
      symbol: '‎¥'
    },
  'Japan' => {
      rate:  129.98,
      symbol: '‎¥'
    },
  'America' => {
      rate:  1.17,
      symbol: '$'
    },
}

print "How many euros are you exchanging? "
amount_euros = valid_number
print "Which currency of country do you want to exchange to? "
country = valid_country

exchange_rate = CONVERSIONS[country][:rate]
amount_currency = amount_euros * exchange_rate

print "#{amount_euros} euros at an exchange rate of #{exchange_rate} to #{country} is#{CONVERSIONS[country][:symbol]}#{amount_currency.round(2)}."
