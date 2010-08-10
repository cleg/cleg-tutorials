#!/usr/bin/env ruby -wKU

# use enumerators as generators and filters

fibonacci = Enumerator.new do |yielder| 
  a = 0
  b = 1
  loop do
    next_num = a + b
    yielder.yield next_num
    a, b = b, next_num
  end 
end

15.times { print fibonacci.next, ' ' }
# all enumerator's methods available here
puts 
p fibonacci.first(5)

# NB: don't try to use methods, trying to read whole sequence: select, last, cout, etc.

def filter(enum, &block)
  Enumerator.new do |yielder| 
    enum.each do |value|
      yielder.yield(value) if block.call(value) 
    end
  end 
end

# got fibonacci numbers, ending with 0
p filter(fibonacci) {|val| val % 10 == 0}.first(5)

# we can add this method to Enumerator class

class Enumerator
  def filter(&block) 
    Enumerator.new do |yielder|
      self.each do |value| 
        yielder.yield(value) if block.call(value)
      end 
    end
  end 
end

p fibonacci.filter {|val| val % 10 == 0} 
           .filter {|val| val.to_s =~ /3/ }.first(5)