class Pizza
  BASE = 8
  @people_num = 0
  @pizza_num = 0

  def get_inputs
    puts 'How many people? '
    puts 'Must be correct number!' while (@people_num = gets.chomp.to_i) <= 0
    puts 'How many pezzas do you have? '
    puts 'Must be correct number!' while (@pizza_num = gets.chomp.to_i) <= 0
  end

  def output
    get_inputs
    puts 'Each person gets %d pieces of pizza.' % (BASE*@pizza_num/@people_num)
    puts 'There are %d leftover pieces' % (BASE*@pizza_num%@people_num)
  end
end

Pizza.new.output
