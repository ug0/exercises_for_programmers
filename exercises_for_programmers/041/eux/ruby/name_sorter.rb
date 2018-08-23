NAMES = [
  {
    'First Name' => 'Ling',
    'Last Name' => 'Mai'
  },
  {
    'First Name' => 'Johnson',
    'Last Name' => 'Jim'
  },
  {
    'First Name' => 'Zarnecki',
    'Last Name' => 'Sabrina'
  },
  {
    'First Name' => 'Jones',
    'Last Name' => 'Chris'
  },
  {
    'First Name' => 'Jones',
    'Last Name' => 'Aaron'
  },
  {
    'First Name' => 'Swift',
    'Last Name' => 'Geoffrey'
  },
  {
    'First Name' => 'Xiong',
    'Last Name' => 'Fong'
  }
]

def sort(data)
  data.sort_by { |e| e['Last Name'] }
      .sort_by { |e| e['First Name'] }
end

results =
  ["Total of #{sort(NAMES).size} names", '-----------------'] +
  sort(NAMES).map {|name| "#{name['First Name']}, #{name['Last Name']}" }

results.each(&method(:puts))
puts '-----------------'
puts 'Results are saved to names_sorter.txt'

File.open('names_sorter.txt', 'w') do |f|
  results.each { |line| f.puts line }
end
