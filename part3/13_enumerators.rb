#!/usr/bin/env ruby -wKU

# enumerators sample

a = [ 1, 3, 5 ] 
h = { dog: "canine", fox: "lupine" }

# create Enumerators 
enum_a = a.to_enum 
enum_h = h.to_enum

# most of internal iterators, called without a block - also returns enumerators,
# acting similar to their behavoir. so it's equal to
# enum_a = a.each

enum_a.next # => 1
enum_a.next # => 3
enum_a.next # => 5

# next call will cause stop iteration error
# enum_a.next 

enum_h.next # => [:dog, "canine"]
enum_h.next # => [:fox, "lupine"]

# loop usage
# StopIteration exception inside a loop cause correct loop termination

our_enum = [1, 2, 3, 4, 5].each
loop do
  puts "#{our_enum.next}" 
end

# each_char returns enumerator, and we call it's method each_with_index
"bobby".each_char.each_with_index {|item, index| puts "#{index}) #{item}" }
# there is shortcut for this
# "bobby".each_char.with_index {|item, index| puts "#{index}) #{item}" }

# explicit enumerators creation
enum = "bobby".enum_for(:each_char) # specify desired iteration method
p enum.to_a	# =>	["b", "o", "b", "b", "y"]

sliced_enum = (1..14).enum_for(:each_slice, 3) 
p sliced_enum.to_a	# =>	[[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12], [13, 14]]
