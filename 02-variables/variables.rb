puts "02-variables"
puts

a = 3
b = 2
c = a + b

puts a
puts b , c

# For strings, we can double or single quotes.
d = "Steve"
e = 'Perry'

# Use #{} to embed a string in a variable in a string.
puts "#{d} Edward #{e} is #{a} years old."

puts d, e

f = 4.3
g = 2.1
h = f/g
puts f, g, h
puts

# The numeric variable a is an object.
cls = a.class
puts "a is an instance of class #{cls}."
puts "Is a greater than b?"
puts a.>b
puts "The size of a is #{a.size}."

puts
# A constant number is an object.
cls = 17.class
puts "What is 17 modulo 5?."
puts 17.modulo 5

puts
puts "What is the bitwise AND of 14 and 3?"
puts 14.& 3

# The floating point variable f is an object.
cls = f.class
puts
puts "f is an instance of class #{cls}."
puts "What is the integer part of f divided by g?"
puts f.div g

puts
puts "What are the ancestors of the class of a?"

cls = a.class.superclass

while cls
  puts cls
  cls = cls.superclass
end

# puts "What are the instance methods of the class of a?"
# puts a.class.instance_methods
