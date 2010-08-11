#!/usr/bin/env ruby -wKU

# shows inheritance in classes

class Parent
  def greet
    puts 'Hello, parent'
  end
end

class Child1 < Parent
end

class Child2 < Parent
  def greet
    puts 'Hello, child'
  end
end 

p = Parent.new
c1 = Child1.new
c2 = Child2.new

p.greet   # parent's greet
c1.greet  # still parent's greetm inherited
c2.greet  # parent's method overrited

puts "Child's superclass is #{Child1.superclass}"
puts "Parent's superclass is #{Parent.superclass}"

