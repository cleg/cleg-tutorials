#!/usr/bin/env ruby -wKU

# shows blocks usage as objects

class ProcExample 
  def set_block(&block) # & - means that block expected as parameter
    @stored = block
  end
  def use(parameter) 
    @stored.call(parameter)
  end 
end

eg = ProcExample.new 
eg.set_block { |param| puts "The parameter is #{param}" } 
eg.use(5) # => >> The parameter is 5

# lambda functions create blocks

l = lambda { |param| puts "Param is: #{param}" }
l.call 99 # => >> Param is: 99
l.call "bobby" # => >> Param is: bobby

# blocks as closures

def incr_by(incr)
  -> a { a + incr }  # new-style lambda decl. available in ruby 1.9
end

inc2 = incr_by(2)
inc2.call 5 # => 7

inc10 = incr_by(10)
inc10.call 7 # => 17

# block value re-evaluates on each call

def my_while(cond, &body) 
  while cond.call
    body.call 
  end
end 
a=0 
my_while -> { a < 3 } do
  puts a
  a += 1 
end

