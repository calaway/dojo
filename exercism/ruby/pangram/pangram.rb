class Pangram
  def self.pangram?(phrase)
    ("a".."z").all? do |letter|
      phrase.include?(letter)
    end
  end
end
