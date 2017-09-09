#!/usr/bin/env ruby

require_relative ('bdd_independent.rb')

puts 'Input a word to check for anagram compatibility.'
first_input = gets.chomp
puts 'Input another word'
second_input = gets.chomp

new_anagram = AnagramChecker.new(first_input, second_input)

result = new_anagram.same_length?

if result == true
  puts "These words are the same length, let's see about the rest shall we..."
else
  puts "Not the same length, but let's see about the rest!"
end

result_step2 = new_anagram.same_letters?

if result_step2 == true
  puts "YEAH! These words are still anagrams despite capitalization!"
else
  puts "Hmmm, we seem to have a problem, I don't think those are anagrams. Try again!"
end


# prints
#
#
# return "These words are the same length, let's see about the rest shall we..."
# return "YEAH! These words are still anagrams despite capitalization!"
# return "These words ARE anagrams!"

# These are not yet incorperated.
