def hello
  puts 'What is your name?'
  name = yield
  greet = case name
          when 'Bamboo', 'lumuy', 'ug0', 'eux'
            'great'
          else
            'nice'
          end
  puts "Hello, #{name}, #{greet} to meet you!"
end

hello { gets.chomp }
