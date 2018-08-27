require "csv"

csv = CSV.read 'data.csv'
data = csv.map do |row|
  { last: row[0], first: row[1], salary: row[2] }
end

def sort(data)
  data.sort_by { |e| e[:first] }
      .sort_by { |e| e[:last] }
end

def left_just(value)
  value.ljust(10, ' ')
end

puts 'Last      First     Salary'
puts '-------------------------'
sort(data).each do |row|
  puts "#{left_just(row[:last])}#{left_just(row[:first])}#{left_just(row[:salary])}"
end
