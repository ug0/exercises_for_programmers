EMPLOYEES = [
  {
    'First Name' => 'John',
    'Last Name' => 'Johnson',
    'Position' => 'Manager',
    'Separation date' => '2016-12-31'
  },
  {
    'First Name' => 'Tou',
    'Last Name' => 'Xiong',
    'Position' => 'Software Engineer',
    'Separation date' => '2016-10-05'
  },
  {
    'First Name' => 'Michaela',
    'Last Name' => 'Michaelson',
    'Position' => 'District Manager',
    'Separation date' => '2015-12-19'
  },
  {
    'First Name' => 'Jake',
    'Last Name' => 'Jacobson',
    'Position' => 'Programmer',
    'Separation date' => ''
  },
  {
    'First Name' => 'Jacquelyn',
    'Last Name' => 'Jackson',
    'Position' => 'DBA',
    'Separation date' => ''
  },
  {
    'First Name' => 'Sally',
    'Last Name' => 'Weber',
    'Position' => 'Web Developer',
    'Separation date' => '2015-12-18'
  },
]

def sort(data)
  data.sort_by { |e| e['First Name'] }
end

def filter(data, string)
  data.reduce([]) do |result, e|
    result << e if e['First Name'] =~ Regexp.new(string) || e['Last Name'] =~ Regexp.new(string)
    result
  end
end

def just(string, length = 20)
  string.ljust(length, ' ')
end

result = filter(sort(EMPLOYEES), 'Jac')

puts 'Name                | Position           | Separation Date'
puts '--------------------|--------------------|----------------'
result.each do |e|
  puts "#{just(e['First Name'] + ' ' + e['Last Name'])}| #{just(e['Position'], 19)}| #{just(e['Separation Date'].to_s, 19)}"
end
