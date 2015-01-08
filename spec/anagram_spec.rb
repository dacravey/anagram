require('rspec')
require('anagram')

describe('Array#anagram') do

  it("compares two identical words and returns an array because they match") do
    expect((["cat"]).anagram("cat")).to(eq(["cat"]))
  end

  it("compare one anagram with base word and return an array with the word because it matches") do
    expect((["act"]).anagram("cat")).to(eq(["act"]))
  end

  it("compares two words with base word and returns an array with words that match") do
    expect((["bat","act"]).anagram("cat")).to(eq(["act"]))
  end

  it("compares multiple words with base word and returns an array with the words that match") do
    expect((["qwer","bat","act","asdf","tac"]).anagram("cat")).to(eq(["act","tac"]))
  end

  it("compares multiple words with base word and returns an array with words that match, including partial matches") do
    expect((["at","qwer","bat","act","asdf","tac"]).anagram("cat")).to(eq(["at","act","tac"]))
  end

  it("correctly rejects partial matches with more of a letter than the base word has") do
    expect((["aat","at","bat","tac","atcd"]).anagram("cat")).to(eq(["at","tac"]))
  end

end
