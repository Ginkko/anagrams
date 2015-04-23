require('rspec')
require('pry')
require('anagrams')

describe("String#anagrams") do
  it("Accepts input of two strings and returns the second string if it is an anagram of the first string.") do
    expect("fox".anagrams("xof")).to(eq("xof"))
  end

end
