class AnagramChecker
  def initialize
    @word1 = word1
    @word2 = word2
  end
  def anagrams(word1, word2)
    if word1.length == word2.length
      puts true
  end
end

# strugglign on this commit, have only been able to get past making my custom class initialize.  Now I'm getting a length comparision at the very least.  



def is_anagram(word1,word2)
  (word1.chars - word2.length.zero?) ? "IS anagram!" : "Is NOT anagram!"
end

puts is_anagram?("less", "sell")
puts is_anagram?("lose", "sell")



  def initialize
    puts "AnagramChecker initialized!"
  end

  def anagrams(word1,word2)
    if
      word1.size == word2.size
    else
      return nil
    end
    # word1.zip(word2).map { |word1check,word2check| anagram?(word1check,word2check) ? 1 : 0 }
  end
end



def anagrams(word, possible_anagrams)
  individual_letters = []
  anagrams = []
  possible_anagrams.each do |anagram|
    individual_letters.push((anagram.split("")))
  end
  individual_letters.each do |anagram|
    anagram.sort!
  end
  individual_letters.each do |words|
    if word.split('').sort.join('') == words.join('')
      puts true
    end
  end
end



class String
  define_method(:make_letter_hash) do
    word = self
    key = {}
    ("a".."z").each do |letter|
      key.store(letter.to_sym, word.count(letter.downcase))
    end
    key
  end

  define_method(:anagrams) do |word_list|
    cypher = self
    word_list.keep_if do |word|
      cypher.make_letter_hash == word.make_letter_hash
    end
  end
end





define_method(:anagrams) do |check_word|
  words = self.downcase
  check_word = check_word.downcase
  words_array = words.split(" ")
  words_array.each do |word|
    if (word.chars.sort) == (check_word.chars.sort)
      true
    else
      false
    end
  end
end


  def anagrams(word1,word2) do |string2|
    string1 = self
    result = false
    if string1.chars().sort().join() == string2.chars().sort().join()
      result = true
    end
    result
  end

  define_method(:anagrams?) do |string_two|
    string_one = self
    result = false
    if string_one.chars().sort().join() == string_two.chars().sort().join()
      result = true
    end
    result
  end





# class AnagramChecker
#   def anagrams(word1,word2)
#     return nil unless word1.size == word2.size
#     word1.zip(word2).map { |word1check,word2check| anagram?(word1check,word2check) ? 1 : 0 }
#   end
# end
