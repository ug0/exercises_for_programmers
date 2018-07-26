class PaintCalculator
  BASE = 350
  @length = 0
  @width = 0
  @radius = 0

  def get_rectangle_inputs
    # single_input("length", @length)
    # single_input("width", @width)
    puts "Please input the length of the room: "
    puts "Muse be valid format! " while (@length=gets.chomp.to_i) <= 0
    puts "Please input the width of the room: "
    puts "Muse be valid format! " while (@width=gets.chomp.to_i) <= 0
  end

  def get_round_inputs
    # single_input("radius", @radius)
    puts "Please input the radius of the room: "
    puts "Muse be valid format! " while (@radius=gets.chomp.to_i) <= 0
  end

  def rectangle_room_size
    @length * @width
  end

  def round_room_size
    (Math::PI*@radius**2).to_i
  end

  def output
    puts 'What type the room is? '
    puts '1.rectangle 2.round (please input the number)'
    puts 'Please input the right number' unless [1, 2].include?(type=gets.chomp.to_i)
    case type
    when 1
      get_rectangle_inputs
      result(rectangle_room_size)
    when 2
      get_round_inputs
      result(round_room_size)
    else
      puts 'How could this happen??'
    end
  end

  private

  def single_input(msg, var)
    puts "Please input the #{msg} of the room: "
    puts "Muse be valid format! " while (var=gets.chomp.to_i) <= 0
  end

  def result(size)
    puts "You will need to purchase %d gallons of paint to cover %d square feet." % [size%BASE == 0 ? size/BASE : (size/BASE + 1), size]
  end
end

PaintCalculator.new.output
