class PhoneNumber
  def self.clean(phone_number)
    phone_number = clean_non_digits(phone_number)
    phone_number = clean_country_code(phone_number)
    return if invalid_length?(phone_number)
    return if invalid_area_code?(phone_number)
    return if invalid_exchange_code?(phone_number)
    phone_number
  end

  def self.clean_non_digits(phone_number)
    phone_number.gsub(/[^0-9]/, '')
  end

  def self.clean_country_code(phone_number)
    return phone_number[1..-1] if phone_number[0] == '1'
    phone_number
  end

  def self.invalid_length?(phone_number)
    phone_number.length != 10
  end

  def self.invalid_area_code?(phone_number)
    ('0'..'1').cover?(phone_number[0])
  end

  def self.invalid_exchange_code?(phone_number)
    ('0'..'1').cover?(phone_number[3])
  end
end

module BookKeeping
  VERSION = 2
end
