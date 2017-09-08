class AnagramChecker
  attr_accessor :first, :second
  def initialize(first, second)
    @first = first
    @second = second
  end

  # 1 compare length of two string inputs
  def same_length?
    @first.length == @second.length
    if true
      "These words are the same length, let's see about the rest shall we..."
    else
      "Not the same length, but let's see about the rest!"
    end
  end

  # 1 + 2 compare strings for same letters plus added step 2 downcase to this method
  # should return Ex: "Tea" is still an anagram of "Eat"
  def same_letters?
    (@first.downcase.split("") - @second.downcase.split("")).empty?
    if true
      "YEAH! These words are still anagrams despite capitalization!"
    else
      "Hmmm, we seem to have a problem, I don't think those are anagrams. Try again!"
    end
  end

  # 1 compare both variable of length and letters
  # should return Ex: "These words are anagrams."
  def anagrams?
    same_length? && same_letters?
    if true
      "These words ARE anagrams!"
    else
      "Hmmm, we seem to have a problem, I don't think those are anagrams. Try again!"
    end
  end

  # 3 find if strings are palindromes
  # should return Ex: "These words are palindromes."
  def palindrome?
     @first.downcase.delete(" ") == @second.downcase.delete(" ").reverse
     if true
       "OMG you made a palindrome too!"
     end
   end


  # 4 check if inputs are words (we will use "must contain" a,e,i,o,u or y othewise not a word) return: "You need to input actual words!"
  def self.contains_only_words?(input)
    words_without_vowels = []
    input.downcase.split(" ").each do |word|
      words_without_vowels << word unless word.scan(/[aeiouy]/).any?
    end
    words_without_vowels.empty?
	end

  def both_inputs_contain_only_words?
    contains_only_words?(@first) && contains_only_words?(@second)
    if false
      "You have got some words here for sure!"
    end
  end

  # 5 check if antigrams (no letters match)
  # returns: "These words have no letter matches and are antigrams."


  # 6 account for multiple words being anagrams or antigrams (spaces and punc. shouldn't count so remove)(use regular expression to remove additional characters)

end
