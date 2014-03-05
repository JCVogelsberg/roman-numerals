def roman_numerals (inputted_number)
  
  original_number_array = inputted_number.to_s.split('')
  roman_numerals_array = []

  ones_hash = {'0' => '', '1' => 'I', '2' => 'II', '3' => 'III', '4' => 'IV', '5' => 'V', '6' => 'VI', '7' => 'VII', '8' => 'VIII', '9' => 'IX'}

  tens_hash = {'0' => '', '1' => 'X', '2' => 'XX', '3' => 'XXX', '4' => 'XL', '5' => 'L', '6' => 'LX', '7' => 'LXX', '8' => 'LXXX', '9' => 'XC'}

  hundreds_hash = {'0' => '', '1' => 'C', '2' => 'CC', '3' => 'CCC', '4' => 'CD', '5' => 'D', '6' => 'DC', '7' => 'DCC', '8' => 'DCCC', '9' => 'CM'}

  thousands_hash = {'0' => '', '1' => 'M', '2' => 'MM', '3' => 'MMM'}

  if original_number_array.length == 4
    roman_numerals_array.push(thousands_hash.fetch(original_number_array[-4]))
    roman_numerals_array.push(hundreds_hash.fetch(original_number_array[-3]))
    roman_numerals_array.push(tens_hash.fetch(original_number_array[-2]))
    roman_numerals_array.push(ones_hash.fetch(original_number_array[-1])) 
  
  elsif original_number_array.length == 3
    roman_numerals_array.push(hundreds_hash.fetch(original_number_array[-3]))
    roman_numerals_array.push(tens_hash.fetch(original_number_array[-2]))
    roman_numerals_array.push(ones_hash.fetch(original_number_array[-1])) 
  
  elsif original_number_array.length == 2
    roman_numerals_array.push(tens_hash.fetch(original_number_array[-2]))
    roman_numerals_array.push(ones_hash.fetch(original_number_array[-1])) 

  else original_number_array.length == 1
    roman_numerals_array.push(ones_hash.fetch(original_number_array[-1]))
  end

  roman_numerals_array.join("")
end

puts roman_numerals(2573)


