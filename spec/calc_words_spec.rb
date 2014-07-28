require ('rspec')
require ('calc_words')

describe('calc_words')  do
  it("analyzes a math problem in words input by the user and produces the correct answer") do
    calc_words("what is 4 plus 6?").should(eq(10))
  end
end
