class Fixnum
  def to_roman
    RomanNumerals.convert(self)
  end
end

class RomanNumerals
  ROMAN_NUMERALS = [
    ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"],
    ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"],
    ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"],
    ["", "M", "MM", "MMM"]
  ]

  def self.convert(number)
    concatenate_roman_digits(roman_digits(number))
  end

  def self.roman_digits(number)
    digits = number.to_s.chars.reverse
    digits.map.with_index do |digit, index|
      ROMAN_NUMERALS[index][digit.to_i]
    end.reverse
  end

  def self.concatenate_roman_digits(roman_digits)
    roman_digits.reduce("") do |roman_numeral, roman_digit|
      roman_numeral += roman_digit
    end
  end
end

module BookKeeping
  VERSION = 2
end
