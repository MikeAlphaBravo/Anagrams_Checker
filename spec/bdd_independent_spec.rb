require('rspec')
require('pry')
require('bdd_independent')

describe('#bdd_independent') do
  # new_method = NewMethod.new()
  it("checks two words to asses if they are anagrams") do
    expect(bdd_independent("ruby", "bury")).to(eq(true))
  end

  #it("is true for most years divisible by 4") do
  #  expect(leap_year?(2004)).to(eq(true))
  #end
end
