require("rspec")
require("roman_numerals")

describe("roman_numerals") do
  it("takes a single digit number and returns a single digit roman numeral") do
    roman_numerals(5).should(eq("V"))
  end

  it("takes a single digit number and returns a double-digit roman numeral") do
    roman_numerals(2).should(eq("II"))
  end

  it("prints no roman numeral more than three times") do
    roman_numerals(4).should(eq("IV")) 
  end 

  it("takes a double-digit number and returns a multi-digit roman numeral") do
    roman_numerals(25).should(eq("XXV"))
  end

  it("takes a triple-digit number and returns a multi-digit roman numeral") do
    roman_numerals(333).should(eq("CCCXXXIII"))
  end

  it("takes a four digit number and returns a multi-digit roman numeral") do
    roman_numerals(1234).should(eq("MCCXXXIV"))
  end  
end

