#!/usr/bin/env ruby -wKU

# shows modules usage

module Exposer # sample modile with mixin method
  def internals
    "#{self.class.name} (\##{self.object_id}): #{self.to_s}" 
  end
end 

class Person
  include Exposer
  include Comparable  # existing module, needs defined method <=>, and gives all logical operations
  attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end
  def to_s
    "Person <Name: #{@name}, Age: #{@age}"
  end
  def <=> other
    self.name <=> other.name
  end
end

pr = Person.new('Jack', 25)
pr.to_s # => "Person <Name: Jack, Age: 25"
pr.internals # => "Person (#2151858540): Person <Name: Jack, Age: 25"

pp = Person.new('Guido', 40)
# included comparable mixin gives us all comparision operations
c1 = pr > pp # => true
c2 = pr < pp # => false

# mixin for calculation of all elements sum
module Summable 
  def sum
    inject(:+) 
  end
end 

# inject into system Array class
class Array
  include Summable 
end

[1, 3, 5, 9, 11].sum # => 29

# modules can have local variables

module Taggable 
  Tags = {} 
  def tag=(value)
    Tags[object_id] = value 
  end
  def tag 
    Tags[object_id]
  end 
end

# extend already existing class
class Person
  include Taggable
end

# now we can tag
pr.tag = 'tag1'
pp.tag = 'tag2'
pr.tag # => "tag1"
pp.tag # => "tag2"
