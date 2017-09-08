require('rspec')
require('pry')
require('bdd_independent')

describe('AnagramChecker#bdd_independent') do
  new_anagram_checker = AnagramChecker.new()
  it("checks two words length") do
    expect(new_anagram_checker.bdd_independent("ruby", "bury")).to(eq(true))
  end

  #it("is true for most years divisible by 4") do
  #  expect(leap_year?(2004)).to(eq(true))
  #end
end
