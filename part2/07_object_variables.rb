#!/usr/bin/env ruby -wKU

# this part shows working with class variables

person = "Tim" 
puts "The object in 'person' is a #{person.class}" 
puts "The object has an id of #{person.object_id}" 
puts "and a value of '#{person}'"

person1 = person
person1[0] = 'J'

puts "person is #{person}" 
puts "person1 is #{person1}"

person2 = person1.dup
person2[0] = 'K'
puts "person1 is #{person1}"
puts "person2 is #{person2}"

person.freeze
# next line will fail, cause original string is frozen
# person1[0] = 'S'
