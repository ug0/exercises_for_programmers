require 'bcrypt'
require 'io/console'

def valid_name
  names = USERS.keys
  until !(name = gets.chomp).empty? && names.include?(name)
    print "Only support names: #{names.join(', ')}. "
  end
  name
end

def encrypt(password)
  BCrypt::Password.create(password)
end

def decrypt(string)
  BCrypt::Password.new(string)
end

USERS = {
  'eux' => encrypt('password'),
  'xue' => encrypt('wordpass')
}

print "What is the name? "
name = valid_name
print "What is the password? "
print "Please enter the password. " while (password = STDIN.noecho(&:gets).chomp).empty?
print

if decrypt(USERS[name]) == password
  print 'Welcome!'
else
  print "I don't know you."
end
