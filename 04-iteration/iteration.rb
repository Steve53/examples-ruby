1.upto(9) {|j| print j, " "}
puts

3.times {print "Hello "}
puts

# Array

[3, 5, 7, 9].each do |i|
  print i, " "
end

puts

[6, 8, 10].each {|i| print i, " "}

puts

for j in [5, 2, 3] do
  print j
end

puts


# Hash

{:Steve=>62, :Nick=>23}.each {|k, v| print "#{k} is #{v}. "}

puts

{:Steve=>62, :Nick=>23}.keys.each {|k| print k}

puts

for p in {:Steve=>62, :Nick=>23} do
  print p, "  "
end

puts


# Range

(5..9).each {|j| print j}

puts

(5...9).each {|j| print j}

puts

for j in (3..7) do
  print j
end

puts
puts


# Condition

balance = 500
while balance < 700 do
  puts balance
  balance*=1.09
end

puts

balance = 500
until balance > 700
  puts balance
  balance = balance * 1.09
end

puts

balance = 500
begin
  puts balance
  balance *= 1.09
end while balance < 700

puts

balance = 500
balance*=1.09 while balance < 700
puts balance

puts

balance = 500
balance *= 1.09 until balance > 700
puts balance
