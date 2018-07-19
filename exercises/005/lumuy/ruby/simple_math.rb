class SimpleMath
  @n1 = 0
  @n2 = 0

  def get_intputs
    puts 'What is the first number? '
    puts 'Must be correct number: ' while (@n1 = gets.chomp.to_i) <= 0
    puts 'What is the second number? '
    puts 'Must be correct number: ' while (@n2 = gets.chomp.to_i) <= 0
  end

  def output
    get_intputs
    puts [@n1, '+', @n2, '=', @n1+@n2].join(' ')
    puts [@n1, '-', @n2, '=', @n1-@n2].join(' ')
    puts [@n1, '*', @n2, '=', @n1*@n2].join(' ')
    puts [@n1, '/', @n2, '=', @n1/@n2].join(' ')
  end
end

SimpleMath.new.output
