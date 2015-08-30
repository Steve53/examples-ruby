def greeting
  puts "Hello Steve Perry"
end

# This function has an optional parameter, name, with
# a default value of "bob".

def hi(name = "bob")
  puts "Hi #{name.capitalize}"
end

puts

# We can call a function with or without parentheses.
greeting()
greeting

hi
hi "Joe"
hi "sam"
hi("Jane")
hi(name="diane")

puts method(:greeting).owner
puts method(:hi).owner
puts Object.private_method_defined?(:greeting)
puts Object.private_method_defined?(:hi)
