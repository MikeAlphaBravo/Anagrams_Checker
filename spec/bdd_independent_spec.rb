require('rspec')
require('pry')
require('bdd_independent')

describe('AnagramChecker#bdd_independent') do
  x = AnagramChecker.new("bury","dill")
  it("checks two words length") do
    expect(x.same_length?).to(eq(true))
  end

  # it("checks strings for same letters") do
  #   expect(same_letters?("ruby", "ybur")).to(eq(true))
  # end

  # it("checks strings for same length and same letters") do
  #   expect(same_letters?("ruby", "bury")).to(eq(true))
  # end
end
