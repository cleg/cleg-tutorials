#!/usr/bin/env ruby -wKU

# this part describes standard flow control statements

# conditions check
a = 5
if a.even?
  a += 1
elsif a > 3
  a *= 2
else
  a = 17
end
puts "a = #{a}"

puts "a is very big!" if a > 5

# loop
square = 2 
while square < 1000
  square = square*square 
end
puts square

# find machine epsilon
eps = 1.0
eps /= 2 while 1 + eps > 1
puts eps