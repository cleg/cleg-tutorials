#!/usr/bin/env ruby -wKU

# this part shows extended working with arrays

puts "\n--- single-element setting ---"
a=[1,3,5,7,9] 
a[1] = "bat" 
p a
a[-3] = "cat"
p a
a[3] = [ 9, 8 ]
p a
a[6] = 99
p a

puts "\n--- multi-elements setting ---"
a=[1,3,5,7,9] 
a[2, 2] = "cat"
p a
a[2, 0] = "dog"
p a
a[1,1]=[9,8,7]
p a
a[0..3] = []
p a
a[5..6] = 99, 98
p a

puts "\n--- use as stack ---"
stack = []
stack.push 'red'
stack.push 'green'
stack.push 'blue'
p stack
4.times {puts stack.pop}
p stack

puts "\n--- use as queue ---"
queue = []
queue.push 'beacon'
queue.push 'eggs'
2.times {puts queue.shift}
p queue

puts "\n--- slicing ---"
array = [ 1, 2, 3, 4, 5, 6, 7 ] 
p array.first(4) 
p array.last(4)
