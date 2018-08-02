class CurrencyConversion
  @rate = 0
  @euros = 0

  def get_inputs
    puts 'How many euros are you exchanging? '
    puts 'Must be valid number!' while (@euros = gets.chomp.to_i) <= 0
    puts 'What is the exchange rate? '
    puts 'Must be valid rate! ' while(@rate = gets.chomp.to_f) <= 0.0
  end

  def output
    get_inputs
    puts "%d euros at an exhchange rate of %.2f is %.2f U.S dollars" % [@euros, @rate, @euros*@rate/100]
  end
end

CurrencyConversion.new.output
