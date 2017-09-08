require('rspec')
require('pry')
require('bdd_independent')

describe('AnagramChecker#bdd_independent') do
  it("checks two words length") do
    a = AnagramChecker.new("bury","dill")
    expect(a.same_length?).to(eq("These words are the same length, let's see about the rest shall we..."))
  end

  it("checks strings for same letters") do
    a = AnagramChecker.new("Bury","Ruby")
    expect(a.same_letters?).to(eq("YEAH! These words are still anagrams despite capitalization!"))
  end

  it("checks strings for same length and same letters") do
    a = AnagramChecker.new("ruby","bury")
    expect(a.anagrams?).to(eq("These words ARE anagrams!"))
  end

  it("checks strings for the existence of a palindrome") do
    a = AnagramChecker.new("dormitory","dirtyroom")
    expect(a.palindrome?).to(eq("OMG you made a palindrome too!"))
  end
end
