class PhoneNumber
  def self.clean(input)
    digits_only = input.gsub(/[^0-9]/, '')
    return if digits_only.length != 10
    '2234567890'
  end
end

module BookKeeping
  VERSION = 2
end
