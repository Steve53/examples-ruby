







# Define a Greeter class that has three methods:
  # initialize
#   say_hi
#   say_bye
   
#The initialize method has one optional parameter: person.
#The default value of person is "World".
#The argument passed to initialize (or the default "World") is assigned to 
#the @name variable. (I think this is an instance variable.)

#Create a Greeter object named g. We pass "Steve", so @name = "Steve" for
#this instance.
#   g = Greeter.new("Steve")


#Call the say_hi and say_bye methods.
#   g.say_hi
#   g.say_bye
   
   
#ToDo: Investigate inheritance. Greeter inherits from ...
#The instance_methods method is defined in the ... class.# From office examples
#class Greeter

  def initialize(person = "World")
    @name = person
  end

  def say_hi
    puts "Hi #{@name}!"
  end

  def say_bye
    puts "Bye #{@name}. Come again soon."
  end
end

g = Greeter.new("Steve")

g.say_hi
g.say_bye

puts
puts "Greeter instance methods:"
puts Greeter.instance_methods

puts
puts "Greeter instance methods (false):"
puts Greeter.instance_methods(false)

puts
puts "Does g respond to say_hi?"
puts g.respond_to? "say_hi"

puts
puts "Does g respond to to_s?"
puts g.respond_to? "to_s"

puts

class Greeter
  attr_accessor :name
end

g2 = Greeter.new("Andy")

puts
puts
puts "Does g2 respond to name?"
puts g2.respond_to?("name")
puts g2.name

#########################

class Greeter
  attr_accessor :name
end

puts "-----------------------"
puts
puts g.name






# From office examples
#!/usr/bin/env ruby

class MegaGreeter
  attr_accessor :names

  def initialize(names = "World")
    @names = names
  end

  def say_hi
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      @names.each do |n|
        puts "Hello #{n}!"
      end
    else
      puts "Hello #{@names}!"
    end
  end

  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      puts "Goodbye #{@names.join(", ")}. Come back soon."
    else
      puts "Goodbye #{@names}. Come back soon."
    end
  end

end

if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  mg.names = "Zeke"
  mg.say_hi
  mg.say_bye

  mg.names = ["Bob", "Steve"]
  mg.say_hi
  mg.say_bye

  mg.names = nil
  mg.say_hi
  mg.say_bye
end


