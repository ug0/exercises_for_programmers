def names
  names = []
  print 'Enter a name: '
  until (name = gets.chomp).empty?
    print 'Enter a name: '
    names << name
  end
  names
end

def winner
  name_list = names
  rand_index = rand(name_list.size)
  winner = name_list[rand_index]
  puts "The winner is... #{winner}."
end

winner
