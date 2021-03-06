class AnagramChecker
  attr_accessor :first, :second
  def initialize(first, second)
    @first = first
    @second = second
  end

  # 1 compare length of two string inputs
  def same_length?
    @first.length == @second.length
  end

  # 1 + 2 compare strings for same letters plus added step 2 downcase to this method
  def same_letters?
    (@first.downcase.gsub(/[^a-z0-9\s]/i, '').split("") - @second.downcase.gsub(/[^a-z0-9\s]/i, '').split("")).empty?
  end

  # 1 compare both variable of length and letters
  def anagrams?
    same_length? && same_letters?
  end

  # 3 find if strings are palindromes
  def palindrome?
     @first.downcase.delete(" ") == @second.downcase.delete(" ")
   end


  # 4 check if inputs are words (we will use "must contain" a,e,i,o,u or y othewise not a word)
  def self.contains_only_words?(input)
    words_without_vowels = []
    input.downcase.split(" ").each do |word|
      words_without_vowels << word unless word.scan(/[aeiouy]/).any?
    end
    words_without_vowels.empty?
	end

  def both_inputs_contain_only_words?
    AnagramChecker.contains_only_words?(@first) && AnagramChecker.contains_only_words?(@second)
  end

# 5 check if antigrams (no letters match)
  def antigram?
    (@first.downcase.gsub(/[^a-z0-9\s]/i, '').split("") &  @second.downcase.gsub(/[^a-z0-9\s]/i, '').split("")).empty?
  end
end
