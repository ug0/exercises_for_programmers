def valid_file_name
  while (file_name = gets.chomp).empty?
    print 'What is the output file name? '
  end
  file_name
end

file = File.read('example.txt')
output_file = file.gsub('utilize', 'use')

print 'What is the output file name? '
File.open("#{valid_file_name}.txt", 'w') do |f|
  f << output_file
end
puts "Before: #{file}"
puts "After: #{output_file}"
puts "And 'utilize' is replaced with 'use' #{file.scan('utilize').size} times."
