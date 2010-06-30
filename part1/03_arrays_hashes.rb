#!/usr/bin/env ruby -wKU
  
# thsi chapter describes work with arrays and hashes

# array with three elements
a = [ 1, 'cat', 3.14 ]
puts "The first element is #{a[0]}" 

# set the third element 
a[2] = nil
puts "The array is now #{a.inspect}"

# handy shortcut function p

p a

b = [ 'ant', 'bee', 'cat', 'dog', 'elk' ] 
p b
# shortcut 
c = %w{ ham egg cheese tomatoe onion } 
p c

# hashes
hash = {
  'wood'  =>  125,
  'oil'   =>  20,
  'gold'  =>  200
}

p hash

# symbols
hash2 = {
  :wood   =>  210,
  :oil    =>  40,
  :gold   =>  310
}

p hash2

# shortcut in Ruby 1.9
hash3 = {
  wood: 230,
  oil:  50,
  gold: 340
}

p hash3
puts "We've got #{hash3[:wood]} wood"