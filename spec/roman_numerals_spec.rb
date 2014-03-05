require("rspec")
require("roman_numerals")

describe("roman_numerals") do
  it("takes a single digit number and returns a roman numeral") do
    roman_numerals(5).should(eq("V"))
  end
end



