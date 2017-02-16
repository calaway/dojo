class Hamming
  def self.compute(original, mutation)
    zipped_chars = original.chars.zip(mutation.chars)

    zipped_chars.count do |zipped_char|
      zipped_char.first != zipped_char.last
    end
  end
end
