class ComputingSimpleInterest
  @principal = 0
  @rate      = 0
  @years     = 0

  def get_inputs
    puts 'Enter the pricipal: '
    puts 'Must be valid number!' while (@principal = gets.chomp.to_i) <= 0
    puts 'Enter the rate of interest: '
    puts 'Must be valid rate! ' while (@rate = gets.chomp.to_f) <= 0.0
    puts 'Enter the number of years: '
    puts 'Must be valid years! ' while (@years = gets.chomp.to_i) <= 0
  end

  def caculate_simple_interest(principal, rate, years)
    [years, rate, '%', principal*(1+rate*years/100)]
  end

  def output
    get_inputs
    puts "After %d years at %.1f%s, the investment will be worth $%d" % caculate_simple_interest(@principal, @rate, @years)
  end

  def output2
    get_inputs
    if @years > 0
      1.upto(@years).each do |n|
        puts "After %d years at %.1f%s, the investment will be worth $%d" % caculate_simple_interest(@principal, @rate, n)
      end
    end
  end
end

ComputingSimpleInterest.new.output2
