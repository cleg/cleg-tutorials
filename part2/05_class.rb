#!/usr/bin/env ruby -wKU

# this part describes classes declaration basics

class Book
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    @@uah_course = 8.0
    @isbn = isbn
    @price = Float(price)
  end
  
  def to_s
    "Book - ISBN: #{@isbn}, price: #{@price}"
  end
  
  def price_in_uah
    @price * @@uah_course
  end
  
  def price_in_uah=(uahs)
    @price = Float(uahs) / @@uah_course
  end
end

b1 = Book.new 'isbn-1234', 15.95
b2 = Book.new 'isbn-9876', 9.95

puts b1
puts b2

puts b1.price_in_uah
b1.price_in_uah = 200
puts b1