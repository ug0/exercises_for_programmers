class RetirementCalculator
  @age = 0
  @retire_age = 0

  def get_inputs
    puts 'What is your current age? '
    puts 'Must input your age: ' while (@age = gets.chomp.to_i) <= 0
    puts 'At what age would you like to retire? '
    puts 'Must input your retire age: ' while (@retire_age = gets.chomp.to_i) <= 0
  end

  def output
    get_inputs
    puts "You have #{@retire_age - @age} years left until you can reitire."
    puts "Tt's #{Time.now.year}, so you can retire in #{Time.now.year + @retire_age - @age}."
  end
end

RetirementCalculator.new.output
