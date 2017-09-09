require('rspec')
require('pry')
require('bdd_independent')

# 1
describe('AnagramChecker#bdd_independent') do
  it("checks two words length") do
    a = AnagramChecker.new("bury","dill")
    expect(a.same_length?).to(eq(true))
  end

# 1 & 2
  it("checks strings for same letters") do
    a = AnagramChecker.new("Bury","Ruby")
    expect(a.same_letters?).to(eq(true))
  end

# 1
  it("checks strings for same length and same letters") do
    a = AnagramChecker.new("ruby","bury")
    expect(a.anagrams?).to(eq(true))
  end

# 3
  it("#palindrome? returns true for a palindrome") do
    a = AnagramChecker.new("dormitory","dirtyroom")
    expect(a.palindrome?).to(eq(false))
  end

  it("#palindrome? returns false for a non palindrome") do
    a = AnagramChecker.new("a but tuba","abut tub a")
    expect(a.palindrome?).to(eq(true))
  end

# 4
  it("checks strings for words using vowels as indicators, looking for an empty and NOT empty array return") do
    expect(AnagramChecker.contains_only_words?("this is only a test")).to(eq(true))
    expect(AnagramChecker.contains_only_words?("this is only a test with snthsnthsnthsnt")).to(eq(false))
  end

# 5
  it("#antigram? returns true if both inputs share no letters.") do
    a = AnagramChecker.new("this","rock")
    expect(a.antigram?).to(eq(true))
  end

  it("#antigram? returns false if inputs share even 1 letter.") do
    a = AnagramChecker.new("this","sock")
    expect(a.antigram?).to(eq(false))
  end

# 6



  # it("checks strings for no matching letters") do
  #   a = AnagramChecker.new("dormitory","dirtyroom")
  #   expect(a.palindrome?).to(eq("OMG you made a palindrome too!"))
  # end

  # it("checks strings of multiple words for anagram and antigram") do
  #   a = AnagramChecker.new("dormitory","dirtyroom")
  #   expect(a.palindrome?).to(eq("OMG you made a palindrome too!"))
  # end

end
