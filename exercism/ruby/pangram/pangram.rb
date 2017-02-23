class Pangram
  def self.pangram?(phrase)
    phrase.downcase!
    ("a".."z").all? do |letter|
      phrase.include?(letter)
    end
  end
end
