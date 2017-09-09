#!/usr/bin/env ruby

require_relative ('bdd_independent.rb')

puts 'Input a word to check for anagram compatibility.'
first_input = gets.chomp
puts 'Input another word'
second_input = gets.chomp

new_anagram = AnagramChecker.new(first_input, second_input)

# 1
if new_anagram.same_length?
  puts "These words are the same length, let's see about the rest shall we..."
else
  puts "Not the same length, but let's see about the rest!"
end

# 1 & 2
if new_anagram.same_letters?
  puts "YEAH! These words are still anagrams despite capitalization!"
else
  puts "Hmmm, we seem to have a problem, these don't have the same letters. Try again!"
end

# 1
if new_anagram.anagrams?
  puts "These words ARE anagrams!"
else
  puts "Hmmm, we seem to have a problem, I don't think those are anagrams. Try again!"
end

# 3
if new_anagram.palindrome?
  puts "OMG did you entered the same word twice ya dummy!? Or are you genius and typed super weird combos to try and trick me?"
end

# 4


# 5


# 6



# prints
#
#
# return "These words are the same length, let's see about the rest shall we..."
# return "YEAH! These words are still anagrams despite capitalization!"
# return "These words ARE anagrams!"

# These are not yet incorperated.
