p 'What is your name?'
name = gets.chomp
hash = {'a1': '001', 'a2': '002', 'a3': '003'}
p "Hello, #{name}, #{hash[name.to_sym] || 'nice'} to meet you!"
