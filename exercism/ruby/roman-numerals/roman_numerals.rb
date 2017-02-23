class Fixnum
  ROMAN_NUMERALS = [
    ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"],
    ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"],
    ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"],
    ["", "M", "MM", "MMM"]
  ]

  def to_roman
    digits = self.to_s.chars.reverse
    roman_digits = digits.map.with_index do |digit, index|
      ROMAN_NUMERALS[index][digit.to_i]
    end.reverse
    roman_digits.inject("") do |roman_numeral, roman_digit|
      roman_numeral += roman_digit
    end
  end
end
