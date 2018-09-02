require "json"

file = open('products.json').read
PRODUCTS = JSON.parse(file)['products']

def valid_input
  while (input = gets.chomp).empty?
    print 'What is the product name? '
  end
  input
end

def find(name)
  PRODUCTS.find{ |product| product['name'] == name }
end

print 'What is the product name? '
name = valid_input
until (product = find(name)) do
  puts 'Sorry, that product was not found in our inventory.'
  print 'What is the product name? '
  name = valid_input
end
puts "Name: #{product['name']}"
puts "Price: #{product['price']}"
puts "Quantity: #{product['quantity']}"
