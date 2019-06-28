class Hamming
  def self.compute(original, mutation)
    validate_arguments(original, mutation)

    zipped_chars = original.chars.zip(mutation.chars)
    zipped_chars.count do |zipped_char|
      zipped_char.first != zipped_char.last
    end
  end

  def self.validate_arguments(original, mutation)
    raise ArgumentError if original.length != mutation.length
  end
end

module BookKeeping
  VERSION = 3
end
