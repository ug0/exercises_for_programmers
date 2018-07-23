def get_number(number_type)
  number_type == 'integer' ? Integer(gets.chomp) : Float(gets.chomp)
end

def valid_number(number_type, input_type, item_name)
  print "What is the #{input_type} of #{item_name}? "
  until (number = get_number(number_type) rescue false) && number > 0
    print "Please enter a positive #{number_type}. "
  end
  number
end

def valid_price(item_name)
  valid_number('number', 'price', item_name)
end

def valid_quantity(item_name)
  valid_number('integer', 'quantity', item_name)
end

def record_item(items, item_name)
  items.merge!(
    item_name => {
      price: valid_price(item_name),
      quantity: valid_quantity(item_name)
    }
  )
end

TAX_RATE = 5.5 / 100

items = {}
items = record_item(items, 'apples')
items = record_item(items, 'pills')
items = record_item(items, 'eggs')

subtotal = items.sum { |_item, values| values[:price] * values[:quantity] }
tax = subtotal * TAX_RATE
total = subtotal + tax

puts ''
items.each do |item, values|
  puts "Enter the price of #{item}: #{values[:price]}"
  puts "Enter the quantity of #{item}: #{values[:quantity]}"
end
puts "Subtotal: $#{subtotal.round(2)}"
puts "Tax: $#{tax.round(2)}"
puts "Total: $#{total.round(2)}"
