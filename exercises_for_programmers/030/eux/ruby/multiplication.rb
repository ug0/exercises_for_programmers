def multiplication_table
  puts_row([nil] + (0..12).to_a)
  0.upto(12) do |i|
    row = [i]
    0.upto(12) { |j| row << i * j }
    puts_row(row)
  end
end

def puts_row(row)
  puts row.map(&method(:right_just)).join(', ')
end

def right_just(num)
  num.to_s.rjust(3, ' ')
end

multiplication_table
