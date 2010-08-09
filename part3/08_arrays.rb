#!/usr/bin/env ruby -wKU

# this part shows working with arrays

# first way of creation
puts "\n--- first way ---"
a = [ 3.14159, "pie", 99 ] 
puts a.class	
puts a.length
puts a[1]	
puts a[3]

# second way of creation
puts "\n--- second way ---"
b = Array.new 
puts b.class	
puts b.length	
b[0] = "second" 
b[1] = "array"
b[5] = "goes here" # nils was added on skipped places
p b

# indexation
puts "\n--- neg.indexation ---"
a = [ 1, 3, 5, 7, 9 ] 
puts a[-1] 
puts a[-2] 
puts a[-99]

puts "\n--- two bounds indexation ---"
p a[1,3] 
p a[3, 1]
p a[-3, 2]

puts "\n--- range indexation ---"
p a[1..3] 
p a[1...3] 
p a[3..3] 
p a[-3..-1]
