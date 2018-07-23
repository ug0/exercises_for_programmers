class Counting
  @name = ''

  def greeting
    p 'What is the input string?'
    @name = gets.chomp
    check_input
  end

  def check_input
    if @name.empty?
      p 'you must enter something'
      greeting
    end
  end

  def count
    greeting
    p "#{@name} has #{@name.length} characters."
  end
end

Counting.new.count
