class DetermningCompoundInterest
  @principal = 0
  @rate = 0
  @years = 0
  @compounded = 0

  def get_input
    puts 'What is the principal amount? '
    puts 'Must be valid principal! ' while(@principal = gets.chomp.to_i) <= 0
    puts 'What is the rate? '
    puts 'Must be valid rate! ' while(@rate = gets.chomp.to_f) <= 0.0
    puts 'What is the number of years? '
    puts 'Must be valid years!' while (@years = gets.chomp.to_i) <= 0
    puts 'What is the number of time the interest is compounded per year? '
    puts 'Must be valid number! ' while (@compounded = gets.chomp.to_i) <= 0
  end

  def result_data
    get_input
    [@principal, @rate, '%', @years, @compounded, @principal*(1+@rate/100/@compounded)**(@years*@compounded)]
  end

  def output
    puts '$%d invested at %.1f%s for %d years compounded %d times per year is $%.2f' % result_data
  end
end

DetermningCompoundInterest.new.output
