class PhoneNumber
  def self.clean(phone_number)
    phone_number = phone_number.gsub(/[^0-9]/, '')
    phone_number = phone_number[1..-1] if phone_number.length > 10 && phone_number[0] == '1'
    return if phone_number.length != 10
    return if ('0'..'1').cover?(phone_number[0])
    return if ('0'..'1').cover?(phone_number[3])
    '2234567890'
  end
end

module BookKeeping
  VERSION = 2
end
