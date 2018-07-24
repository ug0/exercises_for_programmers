class RectangularRoomArea
  CONVERSION = 0.09290304
  @length = 0
  @width = 0

  def get_inputs
    puts 'What is the length of the room in feet? '
    puts 'Must be correct fomat! ' while (@length = gets.chomp.to_i) <= 0
    puts 'What is the width of the room in feet? '
    puts 'Must be correct format!' while (@width = gets.chomp.to_i) <= 0
  end

  def showing
    get_inputs
    puts 'The area is'
    puts "#{@length*@width} square feet"
    puts "%.3f square meters" % (@length*@width*CONVERSION)
  end
end

RectangularRoomArea.new.showing
