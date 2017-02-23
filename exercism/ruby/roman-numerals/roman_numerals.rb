class Fixnum
  ROMAN_NUMERALS = [%w(nil I II III IV V VI VII VIII IX)]

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
