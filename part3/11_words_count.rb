#!/usr/bin/env ruby -wKU

# hashes example: words count

def words_from_string(string) 
  string.downcase.scan(/[\w']+/)
end 

def count_frequency(word_list)
  counts = Hash.new(0)  # hash with 0 as default for missing keys
  for word in word_list
    counts[word] += 1 
  end
  counts 
end

input = 'Time for lust, time for lie, time to kiss you life goodbye'
words = words_from_string(input)
freqs = count_frequency(words)
sorted = freqs.sort_by {|word, count| count}
top_five = sorted.last(5)

top_five.each do |word, count| 
  puts "#{word}: #{count}"
end

# equal
# puts top_five.map { |word, count| "#{word}: #{count}" }