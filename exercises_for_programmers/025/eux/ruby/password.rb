print "Enter your password: "
print "Please enter the password. " while (password = gets.chomp).empty?

def password_validator(p)
  return 'very strong' if long?(p) && have_number?(p) && have_letter?(p) && have_special?(p)
  return 'strong' if long?(p) && have_number?(p) && have_letter?(p) && !have_special?(p)
  return 'weak' if !long?(p) && !have_number?(p) && have_letter?(p) && !have_special?(p)
  return 'very weak' if !long?(p) && have_number?(p) && !have_letter?(p) && !have_special?(p)
  'special'
end

def long?(password)
  password.size >= 8
end

def have_letter?(password)
  password =~ /[A-Za-z]/
end

def have_number?(password)
  password =~ /\d/
end

def have_special?(password)
  password =~ /\W/
end

print "The password '#{password}' is a #{password_validator(password)} password."
