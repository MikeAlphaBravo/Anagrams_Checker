require('rspec')
require('pry')
require('bdd_independent')

describe('AnagramChecker#bdd_independent') do
  x = AnagramChecker.new("bury","dill")
  it("checks two words length") do
    expect(x.same_length?).to(eq("These words are the same length, let's see about the rest shall we..."))
  end

  y = AnagramChecker.new("Bury","Ruby")
  it("checks strings for same letters") do
    expect(y.same_letters?).to(eq("YEAH! These words are still anagrams despite capitalization!"))
  end

  z = AnagramChecker.new("dormitory","dirtyroom")
  it("checks strings for same length and same letters") do
    expect(z.anagrams?).to(eq("These words ARE anagrams!"))
  end

end
