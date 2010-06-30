#!/usr/bin/env ruby -wKU

# this chapter describes function definition basics

# last executed statement's result is function result
def say(name)
  "Hello, #{name.capitalize}"
end

puts say("jack")

# function can be called without brackets
puts say "jill"