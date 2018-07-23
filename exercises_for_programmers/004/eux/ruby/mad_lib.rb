def get_word(type)
  print "Enter a #{type}: "
  print "Must enter a #{type}: " while (word = gets.chomp).empty?
  word
end

name = get_word('name')
noun = get_word('noun')
verb = get_word('verb')
adjective = get_word('adjective')
adverb = get_word('adverb')
print "Hi, #{name}. Do you #{verb} your #{adjective} #{noun} #{adverb}? That's cool!"
