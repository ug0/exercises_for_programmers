def valid_input(name)
  while (input = gets.chomp).empty?
    print "#{name}: "
  end
  input
end

def valid_answer(name)
  until ['yes', 'y', 'no', 'n'].include?(input = gets.chomp.downcase)
    print "Do you want a folder for #{name} "
  end
  input == 'yes' || input ==  'y'
end

print 'Site name: '
site_name = valid_input('Site name')
print 'Author: '
author_name = valid_input('Author')
print 'Do you want a folder for JavaScript? '
want_js = valid_answer('JavaScript')
print 'Do you want a folder for CSS? '
want_css = valid_answer('CSS')

html = <<~HTML
  <!DOCTYPE html>
  <html>
    <head>
      <meta name="author" content="#{author_name}">
      <title>#{author_name}</title>
    </head>
    <body>
      <p>Hell, world</p>
    </body>
  </html>
HTML

site_path = "./#{site_name}"
paths = [site_path]
paths << "#{site_path}/js/" if want_js
paths << "#{site_path}/css/" if want_css

paths.each do |path|
  Dir.mkdir path
  puts "Created #{path}"
end

file_path = "#{site_path}/inex.html"
File.open(file_path, 'w') do |f|
  f << html
end
puts "Created #{file_path}"
