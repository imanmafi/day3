require('rspec')
require('find_and_replace.rb')

describe('String#find_and_replace') do
  it('returns ths string with instances of the first argument replaced by the second argument') do
    expect("I love Lucy".find_and_replace("Lucy", "Bob")).to(eq("I love Bob"))
  end
  it('returns the string with any instances of the first argument (even if partial word) replaced by the second') do
    expect("I'm walking my cat to the cathedral".find_and_replace("cat", "dog")).to(eq("I'm walking my dog to the doghedral"))
  end
end
