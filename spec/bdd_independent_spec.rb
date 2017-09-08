require('rspec')
require('pry')
require('bdd_independent')

describe('AnagramChecker#bdd_independent') do
  x = AnagramChecker.new("bury","dill")
  it("checks two words length") do
    expect(x.same_length?).to(eq(true))
  end

  y = AnagramChecker.new("bury","ruby")
  it("checks strings for same letters") do
    expect(y.same_letters?).to(eq(true))
  end

  z = AnagramChecker.new("dormitory","dirtyroom")
  it("checks strings for same length and same letters") do
    expect(z.anagrams?).to(eq(true))
  end
end
