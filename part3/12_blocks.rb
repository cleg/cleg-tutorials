#!/usr/bin/env ruby -wKU

# blocks usage

# simple iteration over array
sum = 0 
[1, 2, 3, 4].each do |value|
  square = value * value
  sum += square 
end
puts sum
# square var is inacessible here - it's block local

# one-lene block format
5.times {|x| puts "Count: #{x}"} 

